/**
 * Stroke geometry: bounds, simplification, and the variable-width outline.
 *
 * docs/05 §8 is explicit that the original app's ink geometry lives inside a
 * closed native component and is not recoverable, so this is a clean-room
 * design. It follows the doc's own recommendation: a per-stroke nested model of
 * `{ points: coords + pressure, penAttributes, bounds }`.
 */

import type { InkPoint, PenAttributes, Rect, Stroke } from "./types";

export function strokeBounds(points: InkPoint[], nominalWidth: number): Rect {
  if (points.length === 0) return { x: 0, y: 0, width: 0, height: 0 };

  let minX = Infinity;
  let minY = Infinity;
  let maxX = -Infinity;
  let maxY = -Infinity;
  for (const pt of points) {
    if (pt.x < minX) minX = pt.x;
    if (pt.y < minY) minY = pt.y;
    if (pt.x > maxX) maxX = pt.x;
    if (pt.y > maxY) maxY = pt.y;
  }

  // Half the widest the stroke can get, plus a little slack for the round caps.
  const pad = nominalWidth * 1.5;
  return {
    x: minX - pad,
    y: minY - pad,
    width: maxX - minX + pad * 2,
    height: maxY - minY + pad * 2,
  };
}

export function recomputeBounds(stroke: Stroke): Stroke {
  return { ...stroke, bounds: strokeBounds(stroke.points, stroke.pen.width) };
}

/**
 * Width at a sample, given the pen's pressure sensitivity.
 *
 * At sensitivity 0 the width is constant; at 1 it ranges over [0.25w, 1.25w].
 * Highlighters ignore pressure entirely — a highlighter with a pressure taper
 * looks like a mistake rather than a highlighter.
 */
export function widthAt(pen: PenAttributes, pressure: number): number {
  if (pen.penType === "highlighter") return pen.width;
  const s = clamp(pen.pressureSensitivity, 0, 1);
  const p = clamp(pressure, 0, 1);
  return pen.width * (1 - s + s * (0.25 + p));
}

export function clamp(v: number, lo: number, hi: number): number {
  return v < lo ? lo : v > hi ? hi : v;
}

/**
 * Radial-distance filter: drops samples closer than `minDist` to the previous
 * kept one. Pointer devices happily emit several samples per pixel; keeping
 * them all bloats the document and makes the outline self-intersect.
 * The first and last samples are always kept.
 */
export function simplify(points: InkPoint[], minDist = 0.7): InkPoint[] {
  if (points.length <= 2) return points.slice();

  const out: InkPoint[] = [points[0]];
  const minDistSq = minDist * minDist;
  for (let i = 1; i < points.length - 1; i++) {
    const prev = out[out.length - 1];
    const dx = points[i].x - prev.x;
    const dy = points[i].y - prev.y;
    if (dx * dx + dy * dy >= minDistSq) out.push(points[i]);
  }
  out.push(points[points.length - 1]);
  return out;
}

/**
 * Builds the filled outline of a variable-width stroke.
 *
 * We walk one side of the centreline offsetting by the half-width at each
 * sample, then walk back down the other side, giving a single closed polygon
 * that Canvas fills in one operation. The alternative — stamping a circle per
 * sample — costs one path op per sample and shows banding when the pen moves
 * fast, so the outline wins on both counts.
 *
 * The centreline is smoothed with quadratic segments through sample midpoints,
 * the standard trick for turning a polyline into a curve without needing to
 * fit splines.
 */
export function buildStrokePath(stroke: Stroke): Path2D {
  const pts = stroke.points;
  const path = new Path2D();
  if (pts.length === 0) return path;

  if (pts.length === 1) {
    const r = widthAt(stroke.pen, pts[0].p) / 2;
    path.moveTo(pts[0].x + r, pts[0].y);
    path.arc(pts[0].x, pts[0].y, r, 0, Math.PI * 2);
    return path;
  }

  const left: { x: number; y: number }[] = [];
  const right: { x: number; y: number }[] = [];

  for (let i = 0; i < pts.length; i++) {
    const prev = pts[i - 1] ?? pts[i];
    const next = pts[i + 1] ?? pts[i];
    let nx = next.x - prev.x;
    let ny = next.y - prev.y;
    const len = Math.hypot(nx, ny);
    if (len < 1e-6) {
      nx = 1;
      ny = 0;
    } else {
      nx /= len;
      ny /= len;
    }
    // Perpendicular, scaled to the half-width at this sample.
    const r = widthAt(stroke.pen, pts[i].p) / 2;
    const px = -ny * r;
    const py = nx * r;
    left.push({ x: pts[i].x + px, y: pts[i].y + py });
    right.push({ x: pts[i].x - px, y: pts[i].y - py });
  }

  traceSide(path, left, true);
  // Return along the other side, from the far end back to the start.
  right.reverse();
  traceSide(path, right, false);
  path.closePath();
  return path;
}

function traceSide(path: Path2D, side: { x: number; y: number }[], start: boolean): void {
  if (side.length === 0) return;
  if (start) path.moveTo(side[0].x, side[0].y);
  else path.lineTo(side[0].x, side[0].y);

  for (let i = 1; i < side.length - 1; i++) {
    const mx = (side[i].x + side[i + 1].x) / 2;
    const my = (side[i].y + side[i + 1].y) / 2;
    path.quadraticCurveTo(side[i].x, side[i].y, mx, my);
  }
  const last = side[side.length - 1];
  path.lineTo(last.x, last.y);
}

/**
 * Distance from a point to the stroke's centreline, used for eraser hit tests
 * and lasso selection. Returns Infinity for an empty stroke.
 */
export function distanceToStroke(stroke: Stroke, x: number, y: number): number {
  const pts = stroke.points;
  if (pts.length === 0) return Infinity;
  if (pts.length === 1) return Math.hypot(pts[0].x - x, pts[0].y - y);

  let best = Infinity;
  for (let i = 0; i < pts.length - 1; i++) {
    const d = distanceToSegment(x, y, pts[i].x, pts[i].y, pts[i + 1].x, pts[i + 1].y);
    if (d < best) best = d;
  }
  return best;
}

function distanceToSegment(
  px: number, py: number,
  ax: number, ay: number,
  bx: number, by: number,
): number {
  const dx = bx - ax;
  const dy = by - ay;
  const lenSq = dx * dx + dy * dy;
  if (lenSq < 1e-9) return Math.hypot(px - ax, py - ay);
  let t = ((px - ax) * dx + (py - ay) * dy) / lenSq;
  t = t < 0 ? 0 : t > 1 ? 1 : t;
  return Math.hypot(px - (ax + t * dx), py - (ay + t * dy));
}

export function rectIntersects(a: Rect, b: Rect): boolean {
  return !(
    a.x + a.width < b.x ||
    b.x + b.width < a.x ||
    a.y + a.height < b.y ||
    b.y + b.height < a.y
  );
}

export function rectContainsPoint(r: Rect, x: number, y: number): boolean {
  return x >= r.x && x <= r.x + r.width && y >= r.y && y <= r.y + r.height;
}

export function unionRect(a: Rect, b: Rect): Rect {
  const x = Math.min(a.x, b.x);
  const y = Math.min(a.y, b.y);
  return {
    x,
    y,
    width: Math.max(a.x + a.width, b.x + b.width) - x,
    height: Math.max(a.y + a.height, b.y + b.height) - y,
  };
}
