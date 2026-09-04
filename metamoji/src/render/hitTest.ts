/**
 * Hit testing and selection handles.
 *
 * The handle vocabulary follows docs/13 §2's `RbConstants$HandleType`: a move
 * body, eight resize handles, and rotation. We drop the original's separate
 * `StepRotate_*` and `Scale_*` handle families — a modifier key on the existing
 * handles covers both, and every extra handle is another 12px target competing
 * for space around small units.
 */

import { distanceToStroke, rectContainsPoint } from "../model/stroke";
import type { Layer, Page, Point, Rect, Unit } from "../model/types";

export type HandleType =
  | "move"
  | "resize-nw"
  | "resize-n"
  | "resize-ne"
  | "resize-e"
  | "resize-se"
  | "resize-s"
  | "resize-sw"
  | "resize-w"
  | "rotate";

export const HANDLE_SIZE = 9;
export const ROTATE_OFFSET = 26;

/** Rotates a world point into a unit's un-rotated local frame. */
export function toUnitLocal(unit: Unit, x: number, y: number): Point {
  if (unit.rotation === 0) return { x, y };
  const cx = unit.x + unit.width / 2;
  const cy = unit.y + unit.height / 2;
  const cos = Math.cos(-unit.rotation);
  const sin = Math.sin(-unit.rotation);
  const dx = x - cx;
  const dy = y - cy;
  return { x: cx + dx * cos - dy * sin, y: cy + dx * sin + dy * cos };
}

export function unitRect(unit: Unit): Rect {
  return { x: unit.x, y: unit.y, width: unit.width, height: unit.height };
}

/**
 * Topmost unit at a world point, searching layers back-to-front so the unit
 * drawn last wins — the same order the user sees.
 */
export function hitTestUnit(page: Page, x: number, y: number): { layer: Layer; unit: Unit } | null {
  for (let li = page.layers.length - 1; li >= 0; li--) {
    const layer = page.layers[li];
    if (!layer.visible || layer.locked) continue;
    for (let ui = layer.units.length - 1; ui >= 0; ui--) {
      const unit = layer.units[ui];
      if (hitsUnit(unit, x, y)) return { layer, unit };
    }
  }
  return null;
}

const INK_HIT_SLOP = 6;

export function hitsUnit(unit: Unit, x: number, y: number): boolean {
  const local = toUnitLocal(unit, x, y);

  if (unit.type === "$draw") {
    // An ink unit usually spans the whole page, so its frame is meaningless as
    // a hit target — test the strokes themselves.
    for (const stroke of unit.strokes) {
      if (!rectContainsPoint(stroke.bounds, local.x, local.y)) continue;
      if (distanceToStroke(stroke, local.x, local.y) <= stroke.pen.width / 2 + INK_HIT_SLOP) {
        return true;
      }
    }
    return false;
  }

  // A background image is scenery, not a target.
  if (unit.type === "$bgimage") return false;

  return rectContainsPoint(unitRect(unit), local.x, local.y);
}

/** Handle positions in world space, in the unit's un-rotated frame. */
export function handlePositions(unit: Unit): Record<HandleType, Point> {
  const { x, y, width: w, height: h } = unit;
  const mx = x + w / 2;
  const my = y + h / 2;
  return {
    "resize-nw": { x, y },
    "resize-n": { x: mx, y },
    "resize-ne": { x: x + w, y },
    "resize-e": { x: x + w, y: my },
    "resize-se": { x: x + w, y: y + h },
    "resize-s": { x: mx, y: y + h },
    "resize-sw": { x, y: y + h },
    "resize-w": { x, y: my },
    rotate: { x: mx, y: y },
    move: { x: mx, y: my },
  };
}

/**
 * Which handle a world point grabs, or null. `scale` is the viewport scale, so
 * the grab radius stays a constant size on screen at any zoom.
 */
export function hitTestHandle(unit: Unit, x: number, y: number, scale: number): HandleType | null {
  const local = toUnitLocal(unit, x, y);
  const grab = (HANDLE_SIZE + 3) / scale;
  const positions = handlePositions(unit);

  const rot = positions.rotate;
  if (Math.hypot(local.x - rot.x, local.y - (rot.y - ROTATE_OFFSET / scale)) <= grab) {
    return "rotate";
  }

  const order: HandleType[] = [
    "resize-nw", "resize-ne", "resize-se", "resize-sw",
    "resize-n", "resize-e", "resize-s", "resize-w",
  ];
  for (const h of order) {
    const p = positions[h];
    if (Math.abs(local.x - p.x) <= grab && Math.abs(local.y - p.y) <= grab) return h;
  }

  if (rectContainsPoint(unitRect(unit), local.x, local.y)) return "move";
  return null;
}

const MIN_UNIT_SIZE = 16;

/** Applies a resize-handle drag, keeping the opposite edge or corner pinned. */
export function resizeUnit(
  unit: Unit,
  handle: HandleType,
  dx: number,
  dy: number,
  keepAspect: boolean,
): Pick<Unit, "x" | "y" | "width" | "height"> {
  let { x, y, width, height } = unit;

  if (handle.includes("w")) {
    const nw = width - dx;
    if (nw >= MIN_UNIT_SIZE) {
      x += dx;
      width = nw;
    }
  }
  if (handle.includes("e")) {
    width = Math.max(MIN_UNIT_SIZE, width + dx);
  }
  if (handle.includes("n")) {
    const nh = height - dy;
    if (nh >= MIN_UNIT_SIZE) {
      y += dy;
      height = nh;
    }
  }
  if (handle.includes("s")) {
    height = Math.max(MIN_UNIT_SIZE, height + dy);
  }

  if (keepAspect && unit.width > 0 && unit.height > 0) {
    const ratio = unit.width / unit.height;
    const byWidth = Math.abs(width - unit.width) > Math.abs(height - unit.height);
    if (byWidth) height = Math.max(MIN_UNIT_SIZE, width / ratio);
    else width = Math.max(MIN_UNIT_SIZE, height * ratio);
    // Corners anchored at the top or left must move so the opposite one stays put.
    if (handle.includes("n")) y = unit.y + unit.height - height;
    if (handle.includes("w")) x = unit.x + unit.width - width;
  }

  return { x, y, width, height };
}

/** Units fully inside a world-space rubber-band rectangle. */
export function unitsInRect(page: Page, rect: Rect): Unit[] {
  const norm = normalizeRect(rect);
  const out: Unit[] = [];
  for (const layer of page.layers) {
    if (!layer.visible || layer.locked) continue;
    for (const unit of layer.units) {
      if (unit.type === "$bgimage") continue;
      const r = unitRect(unit);
      if (
        r.x >= norm.x &&
        r.y >= norm.y &&
        r.x + r.width <= norm.x + norm.width &&
        r.y + r.height <= norm.y + norm.height
      ) {
        out.push(unit);
      }
    }
  }
  return out;
}

export function normalizeRect(rect: Rect): Rect {
  return {
    x: rect.width < 0 ? rect.x + rect.width : rect.x,
    y: rect.height < 0 ? rect.y + rect.height : rect.y,
    width: Math.abs(rect.width),
    height: Math.abs(rect.height),
  };
}

export const HANDLE_CURSORS: Record<HandleType, string> = {
  move: "move",
  "resize-nw": "nwse-resize",
  "resize-n": "ns-resize",
  "resize-ne": "nesw-resize",
  "resize-e": "ew-resize",
  "resize-se": "nwse-resize",
  "resize-s": "ns-resize",
  "resize-sw": "nesw-resize",
  "resize-w": "ew-resize",
  rotate: "grab",
};
