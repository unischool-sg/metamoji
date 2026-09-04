/**
 * The converter against a real imported document.
 *
 * The fixture is the first page of MetaMoJi's own bundled start guide, taken
 * straight out of the Rust `.atdoc` importer (regenerable from
 * `apk/assets/init/guide/startguide.dat`). Synthetic trees are built to match
 * what the converter expects; this one was not, which is the point.
 *
 * The specific hazard it guards: the importer emits the drawing engine's own
 * nodes — `E` elements, `S` styles, `M`/`SM` module nodes — alongside the real
 * page tree. They already got folded into stroke lists, so if the converter
 * ever treats them as units, a page picks up hundreds of placeholder boxes.
 */

import { describe, expect, it } from "vitest";

import fixture from "./__fixtures__/imported-startguide.json";
import { fromGeneric, toGeneric } from "./converter";
import type { GenericTree } from "./generic";
import type { DrawUnit } from "./types";

const tree = fixture as unknown as GenericTree;

describe("converting an imported .atdoc document", () => {
  it("produces a document with the expected page structure", () => {
    const doc = fromGeneric(tree);
    expect(doc.pages).toHaveLength(1);
    expect(doc.pages[0].layers.length).toBeGreaterThan(0);
  });

  it("recovers handwriting with usable geometry and styling", () => {
    const doc = fromGeneric(tree);
    const ink = doc.pages[0].layers
      .flatMap((l) => l.units)
      .filter((u): u is DrawUnit => u.type === "$draw");

    expect(ink.length).toBeGreaterThan(0);
    const strokes = ink.flatMap((u) => u.strokes);
    expect(strokes.length).toBeGreaterThan(0);

    for (const stroke of strokes) {
      expect(stroke.points.length).toBeGreaterThan(0);
      expect(stroke.pen.color).toMatch(/^#[0-9a-f]{3,8}$/i);
      expect(stroke.pen.width).toBeGreaterThan(0);
      expect(stroke.pen.opacity).toBeGreaterThan(0);
      expect(stroke.pen.opacity).toBeLessThanOrEqual(1);
      // Every coordinate must be a real number, or the renderer draws nothing
      // and the hit test returns NaN.
      for (const p of stroke.points) {
        expect(Number.isFinite(p.x)).toBe(true);
        expect(Number.isFinite(p.y)).toBe(true);
      }
      expect(Number.isFinite(stroke.bounds.width)).toBe(true);
      expect(stroke.bounds.width).toBeGreaterThan(0);
    }
  });

  it("does not turn drawing-engine nodes into units", () => {
    const doc = fromGeneric(tree);
    const units = doc.pages.flatMap((p) => p.layers).flatMap((l) => l.units);

    // `E`, `S`, `M`, `SM` and friends live outside the page tree and have
    // already been folded into stroke lists.
    const engineTypes = ["E", "S", "M", "SM", "GM", "EM", "G"];
    const leaked = units.filter((u) =>
      engineTypes.includes(u.degraded?.originalModelType ?? ""),
    );
    expect(leaked).toHaveLength(0);

    // And the page should not be buried under placeholders generally.
    const placeholders = units.filter((u) => u.type === "$dummy");
    expect(placeholders.length).toBeLessThan(units.length);
  });

  it("keeps unit geometry so the page composition survives", () => {
    const doc = fromGeneric(tree);
    const units = doc.pages.flatMap((p) => p.layers).flatMap((l) => l.units);
    expect(units.length).toBeGreaterThan(0);

    for (const unit of units) {
      expect(Number.isFinite(unit.x)).toBe(true);
      expect(Number.isFinite(unit.y)).toBe(true);
      expect(Number.isFinite(unit.width)).toBe(true);
      expect(Number.isFinite(unit.height)).toBe(true);
    }
  });

  it("round-trips an imported document without losing strokes", () => {
    const once = fromGeneric(tree);
    const twice = fromGeneric(toGeneric(once));

    const count = (d: typeof once) =>
      d.pages
        .flatMap((p) => p.layers)
        .flatMap((l) => l.units)
        .filter((u): u is DrawUnit => u.type === "$draw")
        .reduce((n, u) => n + u.strokes.length, 0);

    expect(count(twice)).toBe(count(once));
    expect(twice.pages).toHaveLength(once.pages.length);
  });
});
