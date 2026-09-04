import { describe, expect, it } from "vitest";

import { distanceToStroke, simplify, strokeBounds, widthAt } from "./stroke";
import { screenToWorld, worldToScreen, zoomAbout, clampScale, fitRect } from "../render/viewport";
import type { InkPoint, PenAttributes, Stroke } from "./types";

const pen: PenAttributes = {
  color: "#000000",
  width: 4,
  penType: "ballpoint",
  opacity: 1,
  pressureSensitivity: 1,
};

function stroke(points: InkPoint[]): Stroke {
  return { id: "s", points, pen, bounds: strokeBounds(points, pen.width) };
}

describe("stroke geometry", () => {
  it("bounds cover every point plus room for the stroke width", () => {
    const points: InkPoint[] = [
      { x: 10, y: 10, p: 0.5, t: 0 },
      { x: 50, y: 30, p: 0.5, t: 10 },
    ];
    const b = strokeBounds(points, 4);
    expect(b.x).toBeLessThan(10);
    expect(b.y).toBeLessThan(10);
    expect(b.x + b.width).toBeGreaterThan(50);
    expect(b.y + b.height).toBeGreaterThan(30);
  });

  it("bounds of an empty stroke are empty rather than infinite", () => {
    expect(strokeBounds([], 4)).toEqual({ x: 0, y: 0, width: 0, height: 0 });
  });

  it("width tracks pressure, and stops doing so at zero sensitivity", () => {
    expect(widthAt(pen, 1)).toBeGreaterThan(widthAt(pen, 0));
    const flat = { ...pen, pressureSensitivity: 0 };
    expect(widthAt(flat, 0)).toBe(widthAt(flat, 1));
  });

  it("a highlighter ignores pressure entirely", () => {
    const highlighter: PenAttributes = {
      ...pen,
      penType: "highlighter",
      pressureSensitivity: 1,
    };
    expect(widthAt(highlighter, 0)).toBe(highlighter.width);
    expect(widthAt(highlighter, 1)).toBe(highlighter.width);
  });

  it("simplify drops near-duplicate samples but keeps the endpoints", () => {
    const dense: InkPoint[] = Array.from({ length: 50 }, (_, i) => ({
      x: i * 0.1,
      y: 0,
      p: 0.5,
      t: i,
    }));
    const out = simplify(dense, 1);
    expect(out.length).toBeLessThan(dense.length);
    expect(out[0]).toEqual(dense[0]);
    expect(out[out.length - 1]).toEqual(dense[dense.length - 1]);
  });

  it("simplify leaves short strokes alone", () => {
    const two: InkPoint[] = [
      { x: 0, y: 0, p: 0.5, t: 0 },
      { x: 1, y: 1, p: 0.5, t: 1 },
    ];
    expect(simplify(two)).toEqual(two);
  });

  it("distance to a stroke is zero on the line and grows away from it", () => {
    const s = stroke([
      { x: 0, y: 0, p: 0.5, t: 0 },
      { x: 100, y: 0, p: 0.5, t: 10 },
    ]);
    expect(distanceToStroke(s, 50, 0)).toBeCloseTo(0);
    expect(distanceToStroke(s, 50, 10)).toBeCloseTo(10);
    // Past the end, distance is measured to the endpoint, not the infinite line.
    expect(distanceToStroke(s, 130, 0)).toBeCloseTo(30);
  });

  it("distance to an empty stroke is infinite rather than NaN", () => {
    expect(distanceToStroke(stroke([]), 0, 0)).toBe(Infinity);
  });
});

describe("viewport", () => {
  it("screenToWorld inverts worldToScreen", () => {
    const vp = { scale: 2.5, tx: -130, ty: 64 };
    const screen = worldToScreen(vp, 42, 17);
    const world = screenToWorld(vp, screen.x, screen.y);
    expect(world.x).toBeCloseTo(42);
    expect(world.y).toBeCloseTo(17);
  });

  it("zooming about a point keeps that point fixed on screen", () => {
    const vp = { scale: 1, tx: 20, ty: 30 };
    const anchor = { x: 400, y: 300 };
    const before = screenToWorld(vp, anchor.x, anchor.y);

    const zoomed = zoomAbout(vp, anchor.x, anchor.y, 1.8);
    const after = screenToWorld(zoomed, anchor.x, anchor.y);

    expect(after.x).toBeCloseTo(before.x);
    expect(after.y).toBeCloseTo(before.y);
  });

  it("scale is clamped to a usable range", () => {
    expect(clampScale(1000)).toBeLessThanOrEqual(8);
    expect(clampScale(0.0001)).toBeGreaterThanOrEqual(0.1);
  });

  it("fitRect centres the rect within the view", () => {
    const vp = fitRect({ x: 0, y: 0, width: 1000, height: 500 }, 800, 600, 0);
    const topLeft = worldToScreen(vp, 0, 0);
    const bottomRight = worldToScreen(vp, 1000, 500);

    // Equal margins on both axes means it is centred.
    expect(topLeft.x).toBeCloseTo(800 - bottomRight.x);
    expect(topLeft.y).toBeCloseTo(600 - bottomRight.y);
  });
});
