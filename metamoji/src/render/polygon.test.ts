import { describe, expect, it } from "vitest";

import {
  pointInPolygon,
  polygonBounds,
  polylineCrossesPolygon,
  simplifyPolygon,
  strokeInLasso,
  unitInLasso,
} from "./polygon";
import { createShapeUnit } from "../model/factory";
import { strokeBounds } from "../model/stroke";
import type { InkPoint, Point, Stroke } from "../model/types";

/** A 100x100 square with its top-left at the origin. */
const square: Point[] = [
  { x: 0, y: 0 },
  { x: 100, y: 0 },
  { x: 100, y: 100 },
  { x: 0, y: 100 },
];

function stroke(points: [number, number][]): Stroke {
  const pts: InkPoint[] = points.map(([x, y], i) => ({ x, y, p: 0.5, t: i }));
  return {
    id: "s",
    points: pts,
    pen: {
      color: "#000",
      width: 2,
      penType: "ballpoint",
      opacity: 1,
      pressureSensitivity: 0.5,
    },
    bounds: strokeBounds(pts, 2),
  };
}

describe("pointInPolygon", () => {
  it("detects inside and outside", () => {
    expect(pointInPolygon(square, 50, 50)).toBe(true);
    expect(pointInPolygon(square, 150, 50)).toBe(false);
    expect(pointInPolygon(square, -1, 50)).toBe(false);
  });

  it("handles a concave polygon", () => {
    // A "C" shape: the notch on the right must read as outside.
    const c: Point[] = [
      { x: 0, y: 0 },
      { x: 100, y: 0 },
      { x: 100, y: 30 },
      { x: 40, y: 30 },
      { x: 40, y: 70 },
      { x: 100, y: 70 },
      { x: 100, y: 100 },
      { x: 0, y: 100 },
    ];
    expect(pointInPolygon(c, 20, 50)).toBe(true);
    expect(pointInPolygon(c, 80, 50)).toBe(false);
  });
});

describe("polygonBounds", () => {
  it("covers every vertex", () => {
    expect(polygonBounds(square)).toEqual({ x: 0, y: 0, width: 100, height: 100 });
  });

  it("is empty for an empty polygon", () => {
    expect(polygonBounds([])).toEqual({ x: 0, y: 0, width: 0, height: 0 });
  });
});

describe("polylineCrossesPolygon", () => {
  it("detects a line passing through", () => {
    const through: Point[] = [
      { x: -50, y: 50 },
      { x: 150, y: 50 },
    ];
    expect(polylineCrossesPolygon(through, square)).toBe(true);
  });

  it("returns false for a line that misses entirely", () => {
    const clear: Point[] = [
      { x: -50, y: 200 },
      { x: 150, y: 200 },
    ];
    expect(polylineCrossesPolygon(clear, square)).toBe(false);
  });

  it("returns false for a line wholly inside, which crosses no edge", () => {
    const inside: Point[] = [
      { x: 20, y: 20 },
      { x: 80, y: 80 },
    ];
    expect(polylineCrossesPolygon(inside, square)).toBe(false);
  });
});

describe("strokeInLasso", () => {
  const inside = stroke([
    [20, 20],
    [40, 40],
    [60, 60],
  ]);
  const straddling = stroke([
    [50, 50],
    [200, 200],
  ]);
  const outside = stroke([
    [300, 300],
    [400, 400],
  ]);

  it("contain mode needs every point inside", () => {
    expect(strokeInLasso(inside, square, "contain")).toBe(true);
    expect(strokeInLasso(straddling, square, "contain")).toBe(false);
    expect(strokeInLasso(outside, square, "contain")).toBe(false);
  });

  it("overlap mode takes anything touching", () => {
    expect(strokeInLasso(inside, square, "overlap")).toBe(true);
    expect(strokeInLasso(straddling, square, "overlap")).toBe(true);
    expect(strokeInLasso(outside, square, "overlap")).toBe(false);
  });

  it("overlap catches a stroke that crosses without sampling inside", () => {
    // Both endpoints are outside a narrow band the stroke passes straight
    // through — the case a points-only test misses.
    const band: Point[] = [
      { x: 40, y: -10 },
      { x: 60, y: -10 },
      { x: 60, y: 200 },
      { x: 40, y: 200 },
    ];
    const crossing = stroke([
      [0, 100],
      [200, 100],
    ]);
    expect(strokeInLasso(crossing, band, "overlap")).toBe(true);
    expect(strokeInLasso(crossing, band, "contain")).toBe(false);
  });

  it("an empty stroke is never selected", () => {
    expect(strokeInLasso(stroke([]), square, "overlap")).toBe(false);
  });
});

describe("unitInLasso", () => {
  it("contain mode needs the whole frame inside", () => {
    const small = createShapeUnit(10, 10, 40, 40, "rect");
    const big = createShapeUnit(10, 10, 300, 300, "rect");
    expect(unitInLasso(small, square, "contain")).toBe(true);
    expect(unitInLasso(big, square, "contain")).toBe(false);
  });

  it("overlap mode takes a partly-covered unit", () => {
    const straddling = createShapeUnit(80, 80, 100, 100, "rect");
    expect(unitInLasso(straddling, square, "overlap")).toBe(true);
    expect(unitInLasso(straddling, square, "contain")).toBe(false);
  });

  it("overlap catches a loop drawn entirely inside a large unit", () => {
    const big = createShapeUnit(-500, -500, 2000, 2000, "rect");
    expect(unitInLasso(big, square, "overlap")).toBe(true);
  });

  it("never selects background scenery", () => {
    const bg = {
      ...createShapeUnit(10, 10, 20, 20, "rect"),
      type: "$bgimage" as const,
      imageTicket: "t",
      bgStyle: 0,
      bgColor: "#fff",
      colorOpacity: 1,
      opacity: 1,
    };
    expect(unitInLasso(bg, square, "overlap")).toBe(false);
  });
});

describe("simplifyPolygon", () => {
  it("thins dense points but keeps the shape", () => {
    const dense: Point[] = Array.from({ length: 100 }, (_, i) => ({ x: i * 0.5, y: 0 }));
    const out = simplifyPolygon(dense, 5);
    expect(out.length).toBeLessThan(dense.length);
    expect(out[0]).toEqual(dense[0]);
  });

  it("leaves a short polygon alone", () => {
    const tri = square.slice(0, 3);
    expect(simplifyPolygon(tri)).toEqual(tri);
  });
});
