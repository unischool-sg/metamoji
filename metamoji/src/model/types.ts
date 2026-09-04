/**
 * The typed domain model.
 *
 * This is the *light* representation the editor and renderer work against.
 * It deliberately is not a property bag: every unit is a discriminated union
 * member with real fields. The property-dictionary form used by the original
 * app (and by our on-disk format) lives in `generic.ts`, and `converter.ts`
 * maps between the two.
 *
 * The hierarchy follows docs/01 §2: Document → Note → Page → Layer → Unit.
 * Property names follow docs/05 §2/§4 wherever the original had a formal name.
 */

import type { UnitModelType } from "./modelTypes";

export type ModelId = string;

// ---------------------------------------------------------------------------
// Geometry
// ---------------------------------------------------------------------------

export interface Point {
  x: number;
  y: number;
}

export interface Rect {
  x: number;
  y: number;
  width: number;
  height: number;
}

// ---------------------------------------------------------------------------
// Ink
// ---------------------------------------------------------------------------

/**
 * A single sampled pen point. `p` is normalised pressure in [0,1]; devices
 * without pressure report 0.5 (the PointerEvent default for a pressed mouse).
 * `t` is milliseconds since the stroke started — kept because the original
 * stroke model records time (docs/01 §8) and replay/animation may want it.
 */
export interface InkPoint {
  x: number;
  y: number;
  p: number;
  t: number;
}

export type PenType = "ballpoint" | "fountain" | "marker" | "pencil" | "highlighter";

/**
 * Pen attributes. Modelled on the `DataUtil$KEY` stroke-style vocabulary in
 * docs/05 §8 (`m_ssLineColor`, `m_ssLineWidth`, `m_ssPenType`, `m_ssCalliAngle`,
 * `fp`/SS_FOUNTAIN_PROP taper curves) but expressed as a plain typed record
 * rather than the original's flattened key soup.
 */
export interface PenAttributes {
  /** CSS colour string, e.g. "#1a1a1a". */
  color: string;
  /** Nominal stroke width in document units. */
  width: number;
  penType: PenType;
  /** 0..1 — multiplied into the final alpha. Highlighters default low. */
  opacity: number;
  /**
   * How strongly pressure modulates width. 0 = constant width,
   * 1 = width scales linearly with pressure.
   */
  pressureSensitivity: number;
  /** Calligraphy nib angle in radians. Only meaningful for pen types with a nib. */
  calligraphyAngle?: number;
}

export interface Stroke {
  id: ModelId;
  points: InkPoint[];
  pen: PenAttributes;
  /** Cached axis-aligned bounds in unit-local coordinates. */
  bounds: Rect;
}

// ---------------------------------------------------------------------------
// Units
// ---------------------------------------------------------------------------

/**
 * Fields shared by every unit, matching the original's `DfController` base
 * schema (docs/05 §2): x, y, width, height, rotation, contentScale, unitId.
 */
export interface UnitBase {
  id: ModelId;
  x: number;
  y: number;
  width: number;
  height: number;
  /** Radians, clockwise, about the unit's centre. */
  rotation: number;
  /** Content zoom, distinct from frame size (docs/05 §2). */
  contentScale: number;
  /** Set when a unit could not be fully decoded on import. */
  degraded?: DegradedInfo;
}

export interface DegradedInfo {
  /** The MODELTYPE we failed to represent. */
  originalModelType: string;
  reason: string;
}

/** Handwriting / ink unit. */
export interface DrawUnit extends UnitBase {
  type: "$draw";
  strokes: Stroke[];
}

export type TextAlign = "left" | "center" | "right";

export interface TextUnit extends UnitBase {
  type: "$text";
  text: string;
  fontFamily: string;
  fontSize: number;
  color: string;
  bold: boolean;
  italic: boolean;
  underline: boolean;
  align: TextAlign;
  lineHeight: number;
  /** docs/05 §4: `verticalWriting`. Rendering support is phase-A optional. */
  verticalWriting: boolean;
  backgroundColor?: string;
  borderColor?: string;
}

export interface ImageUnit extends UnitBase {
  type: "$image";
  /** Asset reference into the document's asset table (original: `imageTicket`). */
  imageTicket: string;
  opacity: number;
  hasShadow: boolean;
}

export interface BgImageUnit extends UnitBase {
  type: "$bgimage";
  imageTicket: string;
  /** 0 = fill, 1 = fit, 2 = tile (original: `bgStyle`). */
  bgStyle: number;
  bgColor: string;
  colorOpacity: number;
  opacity: number;
}

export interface PdfUnit extends UnitBase {
  type: "$pdf";
  /** Asset reference to the embedded PDF (original: `ticket`). */
  ticket: string;
  /** 1-based page index inside the embedded PDF. */
  page: number;
  offsetX: number;
  offsetY: number;
  scale: number;
  orientation: number;
  /** Rendered raster of the current page, if one has been produced. */
  rasterTicket?: string;
}

/** Sticky note / flip card (docs/05 §4 `$flipunit`). */
export interface FlipUnit extends UnitBase {
  type: "$flipunit";
  backgroundColor: string;
  /** 0 = front, 1 = back. */
  flipState: number;
  frontText: string;
  backText: string;
  fontSize: number;
  color: string;
}

/**
 * Preserves a unit whose content we cannot represent, so that importing and
 * re-saving a document never silently drops data. Mirrors the original's
 * `$dummy` unit, which exists for exactly this reason (docs/05 §4).
 */
export interface DummyUnit extends UnitBase {
  type: "$dummy";
  /** The untouched generic sub-tree, round-tripped verbatim. */
  preserved: unknown;
}

export type Unit =
  | DrawUnit
  | TextUnit
  | ImageUnit
  | BgImageUnit
  | PdfUnit
  | FlipUnit
  | DummyUnit;

export type UnitType = Unit["type"];

// Compile-time guarantee that every Unit variant has a MODELTYPE tag.
const _unitTypeCheck: Record<UnitType, UnitModelType> = {
  $draw: "$draw",
  $text: "$text",
  $image: "$image",
  $bgimage: "$bgimage",
  $pdf: "$pdf",
  $flipunit: "$flipunit",
  $dummy: "$dummy",
};
void _unitTypeCheck;

// ---------------------------------------------------------------------------
// Containers
// ---------------------------------------------------------------------------

/**
 * Layer types. The original uses free-form `layerType` strings; the two
 * `system:` values are the ones docs/14 §2 relies on for offline-draft merging,
 * so we reserve them now even though phase A never creates them.
 */
export type LayerType = "content" | "background" | "form" | "system:personal" | "system:offline_personal";

export interface Layer {
  id: ModelId;
  layerType: LayerType;
  name: string;
  visible: boolean;
  locked: boolean;
  units: Unit[];
}

export type PaperStyle = "blank" | "lines" | "grid" | "dots";

export interface Page {
  id: ModelId;
  /** Paper size in document units (1 unit = 1 CSS px at 100% zoom). */
  paperWidth: number;
  paperHeight: number;
  paperStyle: PaperStyle;
  paperColor: string;
  layers: Layer[];
  /** Id of the layer that receives new units. */
  currentLayerId: ModelId;
}

export interface NoteMeta {
  title: string;
  createdAt: string;
  updatedAt: string;
}

export interface NoteDocument {
  id: ModelId;
  meta: NoteMeta;
  pages: Page[];
  /**
   * Monotonic revision, bumped on every committed edit. Phase B (sync) needs
   * this for optimistic concurrency the way `SdMODocument.m_contentsRevision`
   * does (docs/07 §2).
   */
  revision: number;
}

// ---------------------------------------------------------------------------
// Lookup helpers
// ---------------------------------------------------------------------------

export function findPage(doc: NoteDocument, pageId: ModelId): Page | undefined {
  return doc.pages.find((p) => p.id === pageId);
}

export function findLayer(page: Page, layerId: ModelId): Layer | undefined {
  return page.layers.find((l) => l.id === layerId);
}

export function currentLayer(page: Page): Layer | undefined {
  return findLayer(page, page.currentLayerId) ?? page.layers[0];
}

export function findUnit(page: Page, unitId: ModelId): { layer: Layer; unit: Unit } | undefined {
  for (const layer of page.layers) {
    const unit = layer.units.find((u) => u.id === unitId);
    if (unit) return { layer, unit };
  }
  return undefined;
}

/** Units of every visible layer, in paint order (bottom layer first). */
export function visibleUnits(page: Page): Unit[] {
  const out: Unit[] = [];
  for (const layer of page.layers) {
    if (layer.visible) out.push(...layer.units);
  }
  return out;
}
