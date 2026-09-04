/**
 * Polygon geometry for lasso selection.
 *
 * docs/09 §3 records that the original offers two lasso modes — one that
 * selects only fully-enclosed objects and one that also takes anything the
 * loop crosses. Both are here, because they are genuinely different tools:
 * "contain" is what you want for picking a word out of dense notes, "overlap"
 * for grabbing a whole scribble without tracing it exactly.
 */

import type { Point, Rect, Stroke, Unit } from "../model/types";

/** Even-odd point-in-polygon test (ray casting). */
export function pointInPolygon(polygon: readonly Point[], x: number, y: number): boolean {
  let inside = false;
  for (let i = 0, j = polygon.length - 1; i < polygon.length; j = i++) {
    const a = polygon[i];
    const b = polygon[j];
    // Does the edge straddle the horizontal ray, and is the crossing to the right?
    if (a.y > y !== b.y > y && x < ((b.x - a.x) * (y - a.y)) / (b.y - a.y) + a.x) {
      inside = !inside;
    }
  }
  return inside;
}

export function polygonBounds(polygon: readonly Point[]): Rect {
  if (polygon.length === 0) return { x: 0, y: 0, width: 0, height: 0 };
  let minX = Infinity;
  let minY = Infinity;
  let maxX = -Infinity;
  let maxY = -Infinity;
  for (const p of polygon) {
    if (p.x < minX) minX = p.x;
    if (p.y < minY) minY = p.y;
    if (p.x > maxX) maxX = p.x;
    if (p.y > maxY) maxY = p.y;
  }
  return { x: minX, y: minY, width: maxX - minX, height: maxY - minY };
}

function segmentsIntersect(
  p1: Point, p2: Point,
  p3: Point, p4: Point,
): boolean {
  const d = (p2.x - p1.x) * (p4.y - p3.y) - (p2.y - p1.y) * (p4.x - p3.x);
  if (Math.abs(d) < 1e-12) return false; // parallel
  const t = ((p3.x - p1.x) * (p4.y - p3.y) - (p3.y - p1.y) * (p4.x - p3.x)) / d;
  const u = ((p3.x - p1.x) * (p2.y - p1.y) - (p3.y - p1.y) * (p2.x - p1.x)) / d;
  return t >= 0 && t <= 1 && u >= 0 && u <= 1;
}

/** True when any edge of the polyline crosses any edge of the polygon. */
export function polylineCrossesPolygon(
  polyline: readonly Point[],
  polygon: readonly Point[],
): boolean {
  for (let i = 0; i < polyline.length - 1; i++) {
    for (let j = 0, k = polygon.length - 1; j < polygon.length; k = j++) {
      if (segmentsIntersect(polyline[i], polyline[i + 1], polygon[j], polygon[k])) {
        return true;
      }
    }
  }
  return false;
}

export type LassoMode = "contain" | "overlap";

export function strokeInLasso(
  stroke: Stroke,
  polygon: readonly Point[],
  mode: LassoMode,
): boolean {
  if (stroke.points.length === 0) return false;

  if (mode === "contain") {
    return stroke.points.every((p) => pointInPolygon(polygon, p.x, p.y));
  }
  // Overlap: any point inside, or the stroke crosses the loop. The crossing
  // test matters for a long stroke whose sampled points all fall outside a
  // narrow loop it nonetheless passes through.
  if (stroke.points.some((p) => pointInPolygon(polygon, p.x, p.y))) return true;
  return polylineCrossesPolygon(stroke.points, polygon);
}

/** The four corners of a unit's frame, in document coordinates. */
export function unitCorners(unit: Unit): Point[] {
  return [
    { x: unit.x, y: unit.y },
    { x: unit.x + unit.width, y: unit.y },
    { x: unit.x + unit.width, y: unit.y + unit.height },
    { x: unit.x, y: unit.y + unit.height },
  ];
}

export function unitInLasso(
  unit: Unit,
  polygon: readonly Point[],
  mode: LassoMode,
): boolean {
  // Background scenery is never a lasso target.
  if (unit.type === "$bgimage") return false;

  // An ink unit usually spans the whole page, so its frame says nothing about
  // where the ink is — test the strokes instead.
  if (unit.type === "$draw") {
    if (unit.strokes.length === 0) return false;
    return mode === "contain"
      ? unit.strokes.every((s) => strokeInLasso(s, polygon, "contain"))
      : unit.strokes.some((s) => strokeInLasso(s, polygon, "overlap"));
  }

  const corners = unitCorners(unit);
  if (mode === "contain") {
    return corners.every((c) => pointInPolygon(polygon, c.x, c.y));
  }

  // Overlap has three distinct cases, and each needs its own test:
  //   the unit pokes into the loop  -> a corner is inside the polygon
  //   the loop and frame interleave -> their edges cross
  //   the loop sits wholly inside a large unit -> neither of the above is true,
  //                                               so test containment the other
  //                                               way round
  if (corners.some((c) => pointInPolygon(polygon, c.x, c.y))) return true;
  if (polylineCrossesPolygon([...corners, corners[0]], polygon)) return true;

  const frame = { x: unit.x, y: unit.y, width: unit.width, height: unit.height };
  return polygon.some(
    (p) =>
      p.x >= frame.x &&
      p.x <= frame.x + frame.width &&
      p.y >= frame.y &&
      p.y <= frame.y + frame.height,
  );
}

/**
 * Individual strokes a lasso caught, grouped by the ink unit holding them.
 * Selecting strokes rather than whole units is what makes a lasso useful on
 * handwriting, where everything on the page lives in one `$draw` unit.
 */
export function strokesInLasso(
  unit: Extract<Unit, { type: "$draw" }>,
  polygon: readonly Point[],
  mode: LassoMode,
): string[] {
  return unit.strokes.filter((s) => strokeInLasso(s, polygon, mode)).map((s) => s.id);
}

/** Radial-distance thinning, so a lasso path stays cheap to test against. */
export function simplifyPolygon(points: readonly Point[], minDist = 3): Point[] {
  if (points.length <= 3) return [...points];
  const out: Point[] = [points[0]];
  const minSq = minDist * minDist;
  for (let i = 1; i < points.length; i++) {
    const last = out[out.length - 1];
    const dx = points[i].x - last.x;
    const dy = points[i].y - last.y;
    if (dx * dx + dy * dy >= minSq) out.push(points[i]);
  }
  return out;
}
