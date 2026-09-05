/** Constructors for fresh model objects, with the app's default styling. */

import { newLayerId, newNoteId, newPageId, newUnitId } from "./ids";
import type {
  BgImageUnit,
  FlipUnit,
  FormKind,
  FormUnit,
  ImageUnit,
  Layer,
  NoteDocument,
  Page,
  PaperStyle,
  PdfUnit,
  ShapeKind,
  ShapeUnit,
  SurveyUnit,
  TextUnit,
  DrawUnit,
} from "./types";

/** A4 at 150 dpi, in document units. */
export const A4_WIDTH = 1240;
export const A4_HEIGHT = 1754;

export function createLayer(name = "Layer 1"): Layer {
  return {
    id: newLayerId(),
    layerType: "content",
    name,
    visible: true,
    locked: false,
    units: [],
  };
}

export function createPage(paperStyle: PaperStyle = "blank"): Page {
  const layer = createLayer();
  return {
    id: newPageId(),
    paperWidth: A4_WIDTH,
    paperHeight: A4_HEIGHT,
    paperStyle,
    paperColor: "#ffffff",
    layers: [layer],
    currentLayerId: layer.id,
  };
}

export function createDocument(title = "Untitled note"): NoteDocument {
  const now = new Date().toISOString();
  return {
    id: newNoteId(),
    meta: { title, createdAt: now, updatedAt: now },
    pages: [createPage()],
    revision: 0,
  };
}

export function createDrawUnit(): DrawUnit {
  return {
    id: newUnitId(),
    type: "$draw",
    x: 0,
    y: 0,
    width: A4_WIDTH,
    height: A4_HEIGHT,
    rotation: 0,
    contentScale: 1,
    strokes: [],
  };
}

export function createTextUnit(x: number, y: number): TextUnit {
  return {
    id: newUnitId(),
    type: "$text",
    x,
    y,
    width: 320,
    height: 64,
    rotation: 0,
    contentScale: 1,
    text: "",
    fontFamily: "system-ui",
    fontSize: 20,
    color: "#1f1f1f",
    bold: false,
    italic: false,
    underline: false,
    align: "left",
    lineHeight: 1.5,
    verticalWriting: false,
  };
}

export function createImageUnit(
  x: number, y: number, width: number, height: number, imageTicket: string,
): ImageUnit {
  return {
    id: newUnitId(),
    type: "$image",
    x, y, width, height,
    rotation: 0,
    contentScale: 1,
    imageTicket,
    opacity: 1,
    hasShadow: false,
  };
}

export function createPdfUnit(
  x: number, y: number, width: number, height: number, ticket: string, page: number,
): PdfUnit {
  return {
    id: newUnitId(),
    type: "$pdf",
    x, y, width, height,
    rotation: 0,
    contentScale: 1,
    ticket,
    page,
    offsetX: 0,
    offsetY: 0,
    scale: 1,
    orientation: 0,
  };
}

export const STICKY_COLORS = ["#fff3b0", "#ffd6d6", "#d6f5d6", "#d6e4ff", "#f0d6ff"];

export function createFlipUnit(x: number, y: number, backgroundColor = STICKY_COLORS[0]): FlipUnit {
  return {
    id: newUnitId(),
    type: "$flipunit",
    x,
    y,
    width: 220,
    height: 160,
    rotation: 0,
    contentScale: 1,
    backgroundColor,
    flipState: 0,
    frontText: "",
    backText: "",
    fontSize: 16,
    color: "#1f1f1f",
  };
}

export function createShapeUnit(
  x: number,
  y: number,
  width: number,
  height: number,
  shape: ShapeKind,
  strokeColor = "#1f1f1f",
  fillColor = "",
): ShapeUnit {
  return {
    id: newUnitId(),
    type: "$shape",
    x, y, width, height,
    rotation: 0,
    contentScale: 1,
    shape,
    strokeColor,
    strokeWidth: 2,
    fillColor,
    fillOpacity: 1,
    cornerRadius: 12,
    dashed: false,
  };
}

export function createFormUnit(
  x: number,
  y: number,
  width: number,
  height: number,
  form: FormKind,
): FormUnit {
  return {
    id: newUnitId(),
    type: "$form",
    x, y, width, height,
    rotation: 0,
    contentScale: 1,
    form,
    columns: form === "ruled" ? 1 : 4,
    rows: 6,
    lineColor: "#8a94a6",
    lineWidth: 1,
    backgroundColor: "",
    backgroundOpacity: 1,
  };
}

/**
 * A background image filling the page — how an imported PDF page is carried, so
 * the user can annotate over it with the ordinary tools.
 */
export function createBgImageUnit(
  width: number,
  height: number,
  imageTicket: string,
): BgImageUnit {
  return {
    id: newUnitId(),
    type: "$bgimage",
    x: 0,
    y: 0,
    width,
    height,
    rotation: 0,
    contentScale: 1,
    imageTicket,
    bgStyle: 1,
    bgColor: "#ffffff",
    colorOpacity: 1,
    opacity: 1,
  };
}

export function createSurveyUnit(x: number, y: number): SurveyUnit {
  return {
    id: newUnitId(),
    type: "$surveyunit",
    x,
    y,
    width: 420,
    height: 300,
    rotation: 0,
    contentScale: 1,
    question: "",
    surveyKind: "radio",
    choices: ["選択肢 1", "選択肢 2", "選択肢 3"],
    graphType: "bar",
    allowAnswer: true,
    publish: true,
    result: {},
    answer: [],
  };
}
