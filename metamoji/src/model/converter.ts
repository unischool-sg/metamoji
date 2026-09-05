/**
 * The converter: typed domain model  <->  generic model tree.
 *
 * This is the compatibility seam. The editor and renderer only ever touch the
 * typed model (`types.ts`), which is small and cheap to walk. Everything that
 * persists, imports or (later) syncs speaks the generic tree (`generic.ts`),
 * which keeps the original app's "type tag + property dictionary" shape.
 *
 * Property key names below are taken from docs/05 §2 and §4 so that a document
 * imported from `.atdoc` lands on the same keys a natively-created one uses.
 *
 * Two rules make this safe to round-trip:
 *   1. `toGeneric(fromGeneric(t))` preserves unknown props — `fromGeneric`
 *      stashes anything it did not consume in `_extra` and `toGeneric` merges
 *      it back. Importing a note and re-saving it never drops data.
 *   2. Unit types we cannot represent become `$dummy` carrying the original
 *      sub-tree verbatim, exactly as the original app does (docs/05 §4).
 */

import {
  addNode,
  childrenOf,
  emptyTree,
  getBool,
  getDict,
  getInt,
  getList,
  getNumber,
  getOptionalString,
  getPoints,
  getString,
  type GenericModel,
  type GenericTree,
  type PropDict,
  type PropValue,
} from "./generic";
import {
  MT_BG_IMAGE,
  MT_DRAW,
  MT_DUMMY,
  MT_FLIP,
  MT_FORM,
  MT_IMAGE,
  MT_LAYER,
  MT_NOTE,
  MT_PAGE,
  MT_PDF,
  MT_SHAPE,
  MT_SURVEY,
  MT_TEXT,
  isUnitModelType,
} from "./modelTypes";
import { newId } from "./ids";
import type {
  BgImageUnit,
  DrawUnit,
  FlipUnit,
  FormKind,
  FormUnit,
  ImageUnit,
  InkPoint,
  Layer,
  LayerType,
  NoteDocument,
  Page,
  PaperStyle,
  PdfUnit,
  PenAttributes,
  PenType,
  Rect,
  ShapeKind,
  ShapeUnit,
  Stroke,
  SurveyGraph,
  SurveyUnit,
  TextAlign,
  TextUnit,
  Unit,
} from "./types";
import { strokeBounds } from "./stroke";

/** Key under which un-consumed properties are parked so round-trips are lossless. */
const EXTRA_KEY = "_extra";

const DEFAULT_PEN: PenAttributes = {
  color: "#1f1f1f",
  width: 2.4,
  penType: "ballpoint",
  opacity: 1,
  pressureSensitivity: 0.6,
};

// ---------------------------------------------------------------------------
// typed -> generic
// ---------------------------------------------------------------------------

export function toGeneric(doc: NoteDocument): GenericTree {
  const tree = emptyTree(doc.id, MT_NOTE);
  const root = tree.models[doc.id];
  root.props = {
    title: doc.meta.title,
    createdAt: doc.meta.createdAt,
    updatedAt: doc.meta.updatedAt,
    revision: doc.revision,
  };

  for (const page of doc.pages) {
    addNode(tree, {
      id: page.id,
      parentId: doc.id,
      modelType: MT_PAGE,
      props: {
        pageId: page.id,
        paperWidth: page.paperWidth,
        paperHeight: page.paperHeight,
        paperStyle: page.paperStyle,
        paperColor: page.paperColor,
        currentLayer: { $ref: page.currentLayerId },
        ...(page.furniture
          ? {
              header: page.furniture.header,
              footer: page.furniture.footer,
              showFurniture: page.furniture.show,
            }
          : {}),
      },
    });

    for (const layer of page.layers) {
      addNode(tree, {
        id: layer.id,
        parentId: page.id,
        modelType: MT_LAYER,
        props: {
          layerId: layer.id,
          layerType: layer.layerType,
          name: layer.name,
          visible: layer.visible,
          locked: layer.locked,
        },
      });

      for (const unit of layer.units) {
        addNode(tree, {
          id: unit.id,
          parentId: layer.id,
          modelType: unitModelType(unit),
          props: unitToProps(unit),
        });
      }
    }
  }

  return tree;
}

function unitModelType(unit: Unit): string {
  // A degraded unit keeps reporting its original tag so re-export is faithful.
  if (unit.type === "$dummy" && unit.degraded) return unit.degraded.originalModelType;
  return unit.type;
}

function baseProps(unit: Unit): PropDict {
  const props: PropDict = {
    unitId: unit.id,
    x: unit.x,
    y: unit.y,
    width: unit.width,
    height: unit.height,
  };
  if (unit.rotation !== 0) props.rotation = unit.rotation;
  if (unit.contentScale !== 1) props.contentScale = unit.contentScale;
  return props;
}

function unitToProps(unit: Unit): PropDict {
  // Unconsumed properties from a previous import go back first, so anything the
  // typed model does know about wins on top of them.
  const parked = (unit as Unit & { [EXTRA_KEY]?: PropDict })[EXTRA_KEY];
  const props: PropDict = parked ? { ...parked, ...baseProps(unit) } : baseProps(unit);

  switch (unit.type) {
    case "$draw":
      props.strokes = unit.strokes.map(strokeToProp);
      break;

    case "$text":
      props.text = unit.text;
      props.fontFamily = unit.fontFamily;
      props.fontSize = unit.fontSize;
      props.color = unit.color;
      props.bold = unit.bold;
      props.italic = unit.italic;
      props.underline = unit.underline;
      props["text-align"] = unit.align;
      props.lineHeight = unit.lineHeight;
      props.verticalWriting = unit.verticalWriting;
      if (unit.backgroundColor) props.backgroundColor = unit.backgroundColor;
      if (unit.borderColor) props.borderColor = unit.borderColor;
      break;

    case "$image":
      props.imageTicket = unit.imageTicket;
      props.opacity = unit.opacity;
      props.hasShadow = unit.hasShadow;
      break;

    case "$bgimage":
      props.imageTicket = unit.imageTicket;
      props.bgStyle = unit.bgStyle;
      props.bgColor = unit.bgColor;
      props.colorOpacity = unit.colorOpacity;
      props.opacity = unit.opacity;
      break;

    case "$pdf":
      props.ticket = unit.ticket;
      props.page = unit.page;
      props.offsetX = unit.offsetX;
      props.offsetY = unit.offsetY;
      props.scale = unit.scale;
      props.orientation = unit.orientation;
      if (unit.rasterTicket) props.rasterTicket = unit.rasterTicket;
      break;

    case "$shape":
      props.shape = unit.shape;
      props.strokeColor = unit.strokeColor;
      props.strokeWidth = unit.strokeWidth;
      props.fillColor = unit.fillColor;
      props.fillOpacity = unit.fillOpacity;
      props.cornerRadius = unit.cornerRadius;
      props.dashed = unit.dashed;
      break;

    case "$form":
      props.form = unit.form;
      props.columns = unit.columns;
      props.rows = unit.rows;
      props.lineColor = unit.lineColor;
      props.lineWidth = unit.lineWidth;
      props.backgroundColor = unit.backgroundColor;
      props.backgroundOpacity = unit.backgroundOpacity;
      break;

    case "$surveyunit":
      props.question = unit.question;
      // The original's key is `type`, but that is our discriminator, so the
      // stored name keeps docs/05 §4's spelling while the field does not.
      props.surveyType = unit.surveyKind === "checkbox" ? "CheckBox" : "RadioButton";
      props.choices = unit.choices;
      props.graphType = unit.graphType;
      props.allowAnswer = unit.allowAnswer;
      props.publish = unit.publish;
      props.result = unit.result;
      props.answer = unit.answer;
      break;

    case "$flipunit":
      props.backgroundColor = unit.backgroundColor;
      props.flipState = unit.flipState;
      props.frontText = unit.frontText;
      props.backText = unit.backText;
      props.fontSize = unit.fontSize;
      props.color = unit.color;
      break;

    case "$dummy": {
      // Re-emit the preserved dictionary untouched, then re-apply our geometry
      // so that moving a placeholder on the canvas still round-trips.
      const preserved = unit.preserved;
      if (preserved && typeof preserved === "object" && !Array.isArray(preserved)) {
        Object.assign(props, preserved as PropDict);
        Object.assign(props, baseProps(unit));
      }
      break;
    }
  }

  return props;
}

function strokeToProp(stroke: Stroke): PropValue {
  // Points are stored flat as [x,y,pressure,t, ...]. A flat numeric array is
  // markedly cheaper than an array of objects both in JSON size and parse time,
  // and it matches the original's PointArray idea (docs/05 §1).
  const flat: number[] = [];
  for (const pt of stroke.points) {
    flat.push(pt.x, pt.y, pt.p, pt.t);
  }
  return {
    id: stroke.id,
    points: { $points: flat },
    color: stroke.pen.color,
    width: stroke.pen.width,
    penType: stroke.pen.penType,
    opacity: stroke.pen.opacity,
    pressureSensitivity: stroke.pen.pressureSensitivity,
    ...(stroke.pen.calligraphyAngle !== undefined
      ? { calligraphyAngle: stroke.pen.calligraphyAngle }
      : {}),
  };
}

// ---------------------------------------------------------------------------
// generic -> typed
// ---------------------------------------------------------------------------

export function fromGeneric(tree: GenericTree): NoteDocument {
  const root = tree.models[tree.rootId];
  if (!root) throw new Error("fromGeneric: tree has no root model");

  const pages = childrenOf(tree, root.id)
    .filter((n) => n.modelType === MT_PAGE)
    .map((n) => pageFromGeneric(tree, n));

  return {
    id: root.id,
    meta: {
      title: getString(root.props, "title", "Untitled"),
      createdAt: getString(root.props, "createdAt", new Date().toISOString()),
      updatedAt: getString(root.props, "updatedAt", new Date().toISOString()),
    },
    revision: getInt(root.props, "revision", 0),
    pages,
  };
}

function pageFromGeneric(tree: GenericTree, node: GenericModel): Page {
  const layers = childrenOf(tree, node.id)
    .filter((n) => n.modelType === MT_LAYER)
    .map((n) => layerFromGeneric(tree, n));

  if (layers.length === 0) {
    layers.push({
      id: newId("layer"),
      layerType: "content",
      name: "Layer 1",
      visible: true,
      locked: false,
      units: [],
    });
  }

  // A page names its current layer either by reference — which is what this
  // app writes — or by index, which is what an imported document carries. An
  // index read as "no answer" fell back to the first layer, and on a class
  // handout the first layer is the background the PDF sits on: everything the
  // user drew went behind the page.
  const currentRef = node.props.currentLayer;
  const currentLayerId =
    currentRef && typeof currentRef === "object" && "$ref" in currentRef
      ? (currentRef as { $ref: string }).$ref
      : typeof currentRef === "number" && layers[currentRef]
        ? layers[currentRef].id
        : layers[layers.length - 1].id;

  const header = getString(node.props, "header", "");
  const footer = getString(node.props, "footer", "");
  const showFurniture = getBool(node.props, "showFurniture", false);

  return {
    id: node.id,
    paperWidth: getNumber(node.props, "paperWidth", 1240),
    paperHeight: getNumber(node.props, "paperHeight", 1754),
    paperStyle: getString(node.props, "paperStyle", "blank") as PaperStyle,
    paperColor: getString(node.props, "paperColor", "#ffffff"),
    layers,
    currentLayerId: layers.some((l) => l.id === currentLayerId) ? currentLayerId : layers[0].id,
    ...(header || footer || showFurniture
      ? { furniture: { header, footer, show: showFurniture } }
      : {}),
  };
}

function layerFromGeneric(tree: GenericTree, node: GenericModel): Layer {
  const units: Unit[] = [];
  for (const child of childrenOf(tree, node.id)) {
    const unit = unitFromGeneric(child);
    if (unit) units.push(unit);
  }
  return {
    id: node.id,
    layerType: getString(node.props, "layerType", "content") as LayerType,
    name: getString(node.props, "name", "Layer"),
    visible: getBool(node.props, "visible", true),
    locked: getBool(node.props, "locked", false),
    units,
  };
}

const BASE_KEYS = new Set(["unitId", "x", "y", "width", "height", "rotation", "contentScale"]);

function baseFromGeneric(node: GenericModel) {
  return {
    id: node.id,
    x: getNumber(node.props, "x", 0),
    y: getNumber(node.props, "y", 0),
    width: getNumber(node.props, "width", 100),
    height: getNumber(node.props, "height", 100),
    rotation: getNumber(node.props, "rotation", 0),
    contentScale: getNumber(node.props, "contentScale", 1),
  };
}

/** Everything in `props` that the typed converter did not consume. */
function extraProps(props: PropDict, consumed: Iterable<string>): PropDict | undefined {
  const seen = new Set(consumed);
  for (const k of BASE_KEYS) seen.add(k);
  const extra: PropDict = {};
  let has = false;
  for (const [k, v] of Object.entries(props)) {
    if (seen.has(k)) continue;
    extra[k] = v;
    has = true;
  }
  return has ? extra : undefined;
}

function attachExtra(unit: Unit, props: PropDict, consumed: string[]): Unit {
  const extra = extraProps(props, consumed);
  if (extra) {
    // Parked on the unit so `toGeneric` can merge it back verbatim.
    (unit as Unit & { [EXTRA_KEY]?: PropDict })[EXTRA_KEY] = extra;
  }
  return unit;
}

export function unitFromGeneric(node: GenericModel): Unit | null {
  const base = baseFromGeneric(node);
  const p = node.props;

  if (!isUnitModelType(node.modelType)) {
    // Unknown or deferred unit type — keep it, visibly, rather than drop it.
    return {
      ...base,
      type: "$dummy",
      preserved: p,
      degraded: {
        originalModelType: node.modelType,
        reason: "unit type not supported by this build",
      },
    };
  }

  switch (node.modelType) {
    case MT_DRAW: {
      const raw = p.strokes;
      const strokes: Stroke[] = Array.isArray(raw)
        ? raw.map(strokeFromProp).filter((s): s is Stroke => s !== null)
        : [];
      const unit: DrawUnit = { ...base, type: "$draw", strokes };
      return attachExtra(unit, p, ["strokes"]);
    }

    case MT_TEXT: {
      const unit: TextUnit = {
        ...base,
        type: "$text",
        text: getString(p, "text", ""),
        fontFamily: getString(p, "fontFamily", "system-ui"),
        fontSize: getNumber(p, "fontSize", 18),
        color: getString(p, "color", "#1f1f1f"),
        bold: getBool(p, "bold", false),
        italic: getBool(p, "italic", false),
        underline: getBool(p, "underline", false),
        align: getString(p, "text-align", "left") as TextAlign,
        lineHeight: getNumber(p, "lineHeight", 1.5),
        verticalWriting: getBool(p, "verticalWriting", false),
        backgroundColor: getOptionalString(p, "backgroundColor"),
        borderColor: getOptionalString(p, "borderColor"),
      };
      return attachExtra(unit, p, [
        "text", "fontFamily", "fontSize", "color", "bold", "italic",
        "underline", "text-align", "lineHeight", "verticalWriting",
        "backgroundColor", "borderColor",
      ]);
    }

    case MT_IMAGE: {
      const unit: ImageUnit = {
        ...base,
        type: "$image",
        imageTicket: getString(p, "imageTicket", ""),
        opacity: getNumber(p, "opacity", 1),
        hasShadow: getBool(p, "hasShadow", false),
      };
      return attachExtra(unit, p, ["imageTicket", "opacity", "hasShadow"]);
    }

    case MT_BG_IMAGE: {
      const unit: BgImageUnit = {
        ...base,
        type: "$bgimage",
        imageTicket: getString(p, "imageTicket", ""),
        bgStyle: getInt(p, "bgStyle", 0),
        bgColor: getString(p, "bgColor", "#ffffff"),
        colorOpacity: getNumber(p, "colorOpacity", 1),
        opacity: getNumber(p, "opacity", 1),
      };
      return attachExtra(unit, p, ["imageTicket", "bgStyle", "bgColor", "colorOpacity", "opacity"]);
    }

    case MT_PDF: {
      const unit: PdfUnit = {
        ...base,
        type: "$pdf",
        ticket: getString(p, "ticket", ""),
        page: getInt(p, "page", 1),
        offsetX: getNumber(p, "offsetX", 0),
        offsetY: getNumber(p, "offsetY", 0),
        scale: getNumber(p, "scale", 1),
        orientation: getInt(p, "orientation", 0),
        rasterTicket: getOptionalString(p, "rasterTicket"),
      };
      return attachExtra(unit, p, [
        "ticket", "page", "offsetX", "offsetY", "scale", "orientation", "rasterTicket",
      ]);
    }

    case MT_SHAPE: {
      const unit: ShapeUnit = {
        ...base,
        type: "$shape",
        shape: getString(p, "shape", "rect") as ShapeKind,
        strokeColor: getString(p, "strokeColor", "#1f1f1f"),
        strokeWidth: getNumber(p, "strokeWidth", 2),
        fillColor: getString(p, "fillColor", ""),
        fillOpacity: getNumber(p, "fillOpacity", 1),
        cornerRadius: getNumber(p, "cornerRadius", 12),
        dashed: getBool(p, "dashed", false),
      };
      return attachExtra(unit, p, [
        "shape", "strokeColor", "strokeWidth", "fillColor",
        "fillOpacity", "cornerRadius", "dashed",
      ]);
    }

    case MT_FORM: {
      const unit: FormUnit = {
        ...base,
        type: "$form",
        form: getString(p, "form", "grid") as FormKind,
        columns: getInt(p, "columns", 4),
        rows: getInt(p, "rows", 6),
        lineColor: getString(p, "lineColor", "#8a94a6"),
        lineWidth: getNumber(p, "lineWidth", 1),
        backgroundColor: getString(p, "backgroundColor", ""),
        backgroundOpacity: getNumber(p, "backgroundOpacity", 1),
      };
      return attachExtra(unit, p, [
        "form", "columns", "rows", "lineColor", "lineWidth",
        "backgroundColor", "backgroundOpacity",
      ]);
    }

    case MT_SURVEY: {
      const rawChoices = getList(p, "choices");
      const choices = rawChoices
        .filter((c: unknown): c is string => typeof c === "string")
        .slice(0, 12);

      const rawResult = getDict(p, "result") ?? {};
      const result: Record<string, number> = {};
      for (const [key, value] of Object.entries(rawResult)) {
        if (typeof value === "number" && Number.isFinite(value)) result[key] = value;
      }

      const unit: SurveyUnit = {
        ...base,
        type: "$surveyunit",
        question: getString(p, "question", ""),
        surveyKind: getString(p, "surveyType", "RadioButton") === "CheckBox"
          ? "checkbox"
          : "radio",
        choices: choices.length > 0 ? choices : ["はい", "いいえ"],
        graphType: getString(p, "graphType", "bar") as SurveyGraph,
        allowAnswer: getBool(p, "allowAnswer", true),
        publish: getBool(p, "publish", true),
        result,
        answer: getList(p, "answer")
          .filter((a: unknown): a is number => typeof a === "number")
          .map((a) => Math.trunc(a)),
      };
      return attachExtra(unit, p, [
        "question", "surveyType", "choices", "graphType",
        "allowAnswer", "publish", "result", "answer",
      ]);
    }

    case MT_FLIP: {
      const unit: FlipUnit = {
        ...base,
        type: "$flipunit",
        backgroundColor: getString(p, "backgroundColor", "#fff3b0"),
        flipState: getInt(p, "flipState", 0),
        frontText: getString(p, "frontText", ""),
        backText: getString(p, "backText", ""),
        fontSize: getNumber(p, "fontSize", 16),
        color: getString(p, "color", "#1f1f1f"),
      };
      return attachExtra(unit, p, [
        "backgroundColor", "flipState", "frontText", "backText", "fontSize", "color",
      ]);
    }

    case MT_DUMMY:
      return {
        ...base,
        type: "$dummy",
        preserved: getDict(p, "c") ?? p,
        degraded: {
          originalModelType: getString(p, "originalModelType", MT_DUMMY),
          reason: getString(p, "reason", "placeholder from a previous import"),
        },
      };
  }

  return null;
}

function strokeFromProp(raw: PropValue): Stroke | null {
  if (!raw || typeof raw !== "object" || Array.isArray(raw)) return null;
  const p = raw as PropDict;

  const flat = getPoints(p, "points");
  if (!flat || flat.length < 4) return null;

  const points: InkPoint[] = [];
  for (let i = 0; i + 3 < flat.length; i += 4) {
    points.push({ x: flat[i], y: flat[i + 1], p: flat[i + 2], t: flat[i + 3] });
  }

  const pen: PenAttributes = {
    color: getString(p, "color", DEFAULT_PEN.color),
    width: getNumber(p, "width", DEFAULT_PEN.width),
    penType: getString(p, "penType", DEFAULT_PEN.penType) as PenType,
    opacity: getNumber(p, "opacity", DEFAULT_PEN.opacity),
    pressureSensitivity: getNumber(p, "pressureSensitivity", DEFAULT_PEN.pressureSensitivity),
  };
  const angle = p.calligraphyAngle;
  if (typeof angle === "number") pen.calligraphyAngle = angle;

  const bounds: Rect = strokeBounds(points, pen.width);
  return { id: getString(p, "id", newId("stroke")), points, pen, bounds };
}
