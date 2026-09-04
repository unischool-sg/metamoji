import { describe, expect, it } from "vitest";

import { fromGeneric, toGeneric } from "./converter";
import {
  createDocument,
  createFlipUnit,
  createFormUnit,
  createImageUnit,
  createShapeUnit,
  createTextUnit,
} from "./factory";
import { addNode, type GenericTree } from "./generic";
import { newStrokeId } from "./ids";
import { strokeBounds } from "./stroke";
import { searchableText, type DrawUnit, type NoteDocument, type Stroke } from "./types";

function makeStroke(): Stroke {
  const points = [
    { x: 10, y: 10, p: 0.4, t: 0 },
    { x: 20, y: 24, p: 0.7, t: 12 },
    { x: 33, y: 41, p: 0.5, t: 25 },
  ];
  return {
    id: newStrokeId(),
    points,
    pen: {
      color: "#123456",
      width: 3.2,
      penType: "fountain",
      opacity: 0.9,
      pressureSensitivity: 0.8,
    },
    bounds: strokeBounds(points, 3.2),
  };
}

function populated(): NoteDocument {
  const doc = createDocument("往復テスト");
  const layer = doc.pages[0].layers[0];

  const ink: DrawUnit = {
    id: "unit_ink",
    type: "$draw",
    x: 0,
    y: 0,
    width: 1240,
    height: 1754,
    rotation: 0,
    contentScale: 1,
    strokes: [makeStroke(), makeStroke()],
  };

  const text = createTextUnit(120, 200);
  text.text = "こんにちは\n世界";
  text.bold = true;
  text.align = "center";

  const image = createImageUnit(40, 60, 200, 150, "asset_abc");
  image.opacity = 0.75;
  image.hasShadow = true;

  const sticky = createFlipUnit(300, 400);
  sticky.frontText = "おもて";
  sticky.backText = "うら";

  const shape = createShapeUnit(500, 500, 180, 120, "roundRect", "#d93025", "#ffe14d");
  shape.dashed = true;
  shape.cornerRadius = 20;

  const form = createFormUnit(700, 100, 300, 240, "table");
  form.columns = 3;
  form.rows = 5;

  layer.units.push(ink, text, image, sticky, shape, form);
  return doc;
}

describe("converter", () => {
  it("round-trips a document through the generic tree", () => {
    const original = populated();
    const restored = fromGeneric(toGeneric(original));

    expect(restored.id).toBe(original.id);
    expect(restored.meta.title).toBe(original.meta.title);
    expect(restored.pages).toHaveLength(1);

    const units = restored.pages[0].layers[0].units;
    expect(units.map((u) => u.type)).toEqual([
      "$draw", "$text", "$image", "$flipunit", "$shape", "$form",
    ]);
  });

  it("preserves shape properties", () => {
    const restored = fromGeneric(toGeneric(populated()));
    const shape = restored.pages[0].layers[0].units[4];
    expect(shape.type).toBe("$shape");
    if (shape.type !== "$shape") return;

    expect(shape.shape).toBe("roundRect");
    expect(shape.strokeColor).toBe("#d93025");
    expect(shape.fillColor).toBe("#ffe14d");
    expect(shape.cornerRadius).toBe(20);
    expect(shape.dashed).toBe(true);
  });

  it("preserves form properties", () => {
    const restored = fromGeneric(toGeneric(populated()));
    const form = restored.pages[0].layers[0].units[5];
    expect(form.type).toBe("$form");
    if (form.type !== "$form") return;

    expect(form.form).toBe("table");
    expect(form.columns).toBe(3);
    expect(form.rows).toBe(5);
  });

  it("preserves stroke geometry and pen attributes exactly", () => {
    const original = populated();
    const restored = fromGeneric(toGeneric(original));

    const before = original.pages[0].layers[0].units[0] as DrawUnit;
    const after = restored.pages[0].layers[0].units[0] as DrawUnit;

    expect(after.strokes).toHaveLength(before.strokes.length);
    expect(after.strokes[0].points).toEqual(before.strokes[0].points);
    expect(after.strokes[0].pen).toEqual(before.strokes[0].pen);
  });

  it("preserves text formatting", () => {
    const restored = fromGeneric(toGeneric(populated()));
    const text = restored.pages[0].layers[0].units[1];
    expect(text.type).toBe("$text");
    if (text.type !== "$text") return;

    expect(text.text).toBe("こんにちは\n世界");
    expect(text.bold).toBe(true);
    expect(text.align).toBe("center");
  });

  it("preserves page and layer properties", () => {
    const original = populated();
    original.pages[0].paperStyle = "grid";
    original.pages[0].paperColor = "#fffdf5";
    original.pages[0].layers[0].name = "下書き";
    original.pages[0].layers[0].visible = false;

    const page = fromGeneric(toGeneric(original)).pages[0];
    expect(page.paperStyle).toBe("grid");
    expect(page.paperColor).toBe("#fffdf5");
    expect(page.layers[0].name).toBe("下書き");
    expect(page.layers[0].visible).toBe(false);
    expect(page.currentLayerId).toBe(original.pages[0].currentLayerId);
  });

  it("survives a second round trip unchanged", () => {
    const once = fromGeneric(toGeneric(populated()));
    const twice = fromGeneric(toGeneric(once));
    expect(twice).toEqual(once);
  });

  it("keeps properties it does not understand, so importing and re-saving loses nothing", () => {
    const doc = createDocument("未知プロパティ");
    const tree = toGeneric(doc);
    const layerId = doc.pages[0].layers[0].id;

    addNode(tree, {
      id: "unit_future",
      parentId: layerId,
      modelType: "$text",
      props: {
        unitId: "unit_future",
        x: 10,
        y: 20,
        width: 100,
        height: 40,
        text: "既知",
        // A property from some future version we have no field for.
        futureFeature: { nested: [1, 2, 3] },
      },
    });

    const reSaved = toGeneric(fromGeneric(tree));
    expect(reSaved.models.unit_future.props.futureFeature).toEqual({ nested: [1, 2, 3] });
    expect(reSaved.models.unit_future.props.text).toBe("既知");
  });

  it("keeps an unsupported unit type as a placeholder instead of dropping it", () => {
    const doc = createDocument("未対応 Unit");
    const tree = toGeneric(doc);
    const layerId = doc.pages[0].layers[0].id;

    addNode(tree, {
      id: "unit_video",
      parentId: layerId,
      modelType: "$video",
      props: { x: 5, y: 6, width: 320, height: 240, dataTicket: "vid_1" },
    });

    const unit = fromGeneric(tree).pages[0].layers[0].units[0];
    expect(unit.type).toBe("$dummy");
    expect(unit.degraded?.originalModelType).toBe("$video");
    // Geometry survives, so the page composition still looks right.
    expect(unit.x).toBe(5);
    expect(unit.width).toBe(320);

    // And re-exporting reports the original type rather than "$dummy".
    const reSaved = toGeneric(fromGeneric(tree));
    expect(reSaved.models.unit_video.modelType).toBe("$video");
  });

  it("tolerates missing and mistyped properties rather than failing to open", () => {
    const tree: GenericTree = {
      rootId: "note_broken",
      models: {
        note_broken: {
          id: "note_broken",
          parentId: null,
          modelType: "$freenote",
          props: {},
          children: ["page_1"],
        },
        page_1: {
          id: "page_1",
          parentId: "note_broken",
          modelType: "$page",
          // Numbers arriving as strings is exactly what a legacy import does.
          props: { paperWidth: "800", paperHeight: null },
          children: [],
        },
      },
    };

    const doc = fromGeneric(tree);
    expect(doc.pages[0].paperWidth).toBe(800);
    expect(doc.pages[0].paperHeight).toBe(1754); // fell back to the default
    // A page with no layers still gets one, so it can be drawn on.
    expect(doc.pages[0].layers).toHaveLength(1);
  });

  it("stores stroke points flat rather than as objects", () => {
    const tree = toGeneric(populated());
    const inkProps = tree.models.unit_ink.props as Record<string, unknown>;
    const strokes = inkProps.strokes as Array<Record<string, unknown>>;
    const points = strokes[0].points as { $points: number[] };

    // 3 samples x (x, y, pressure, t)
    expect(points.$points).toHaveLength(12);
    expect(points.$points.every((n) => typeof n === "number")).toBe(true);
  });
});

describe("searchableText", () => {
  it("collects the title and every text-bearing unit", () => {
    const doc = createDocument("代数のノート");
    const layer = doc.pages[0].layers[0];

    const text = createTextUnit(0, 0);
    text.text = "二次方程式";
    const sticky = createFlipUnit(0, 0);
    sticky.frontText = "おもて";
    sticky.backText = "うら";
    layer.units.push(text, sticky);

    const body = searchableText(doc);
    expect(body).toContain("代数のノート");
    expect(body).toContain("二次方程式");
    expect(body).toContain("おもて");
    expect(body).toContain("うら");
  });

  it("skips empty text and contributes nothing for ink", () => {
    const doc = createDocument("空");
    doc.pages[0].layers[0].units.push(createTextUnit(0, 0));
    // Handwriting has no recognised text, so it adds nothing.
    expect(searchableText(doc)).toBe("空");
  });
});
