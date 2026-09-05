import { describe, expect, it } from "vitest";

import { CATEGORICAL_DARK, CATEGORICAL_LIGHT, chartTotal, niceScale, sliceColor } from "./chart";

describe("niceScale", () => {
  it("rounds the axis up to a readable step", () => {
    // 7 with step 2 gives ticks at 0,2,4,6,8 — the smallest nice axis covering it.
    expect(niceScale(7)).toEqual({ max: 8, step: 2 });
    expect(niceScale(23)).toEqual({ max: 25, step: 5 });
    expect(niceScale(48)).toEqual({ max: 50, step: 10 });
  });

  it("always covers the data", () => {
    for (const max of [1, 3, 9, 17, 48, 137, 1001]) {
      expect(niceScale(max).max).toBeGreaterThanOrEqual(max);
    }
  });

  it("handles an empty or negative maximum without dividing by zero", () => {
    expect(niceScale(0)).toEqual({ max: 1, step: 1 });
    expect(niceScale(-5)).toEqual({ max: 1, step: 1 });
  });

  it("produces a whole number of steps", () => {
    for (const max of [7, 23, 48, 137]) {
      const { max: top, step } = niceScale(max);
      expect(Math.abs((top / step) - Math.round(top / step))).toBeLessThan(1e-9);
    }
  });
});

describe("chartTotal", () => {
  it("sums the values", () => {
    expect(chartTotal([{ label: "a", value: 2 }, { label: "b", value: 3 }])).toBe(5);
  });

  it("ignores negatives rather than subtracting them", () => {
    // A response count cannot be negative; a corrupt one must not shrink the
    // total and skew every percentage.
    expect(chartTotal([{ label: "a", value: 5 }, { label: "b", value: -3 }])).toBe(5);
  });

  it("is zero for no data", () => {
    expect(chartTotal([])).toBe(0);
  });
});

describe("sliceColor", () => {
  it("assigns hues in fixed order", () => {
    expect(sliceColor(0, false)).toBe(CATEGORICAL_LIGHT[0]);
    expect(sliceColor(2, false)).toBe(CATEGORICAL_LIGHT[2]);
    expect(sliceColor(0, true)).toBe(CATEGORICAL_DARK[0]);
  });

  it("folds past the palette into one slot rather than cycling", () => {
    // The original cycles a colour table by `index % 54` (docs/13 §1), which
    // makes the ninth category silently wear the first one's colour.
    const beyond = sliceColor(CATEGORICAL_LIGHT.length, false);
    expect(beyond).not.toBe(CATEGORICAL_LIGHT[0]);
    expect(sliceColor(CATEGORICAL_LIGHT.length + 5, false)).toBe(beyond);
  });

  it("has distinct hues in every slot", () => {
    expect(new Set(CATEGORICAL_LIGHT).size).toBe(CATEGORICAL_LIGHT.length);
    expect(new Set(CATEGORICAL_DARK).size).toBe(CATEGORICAL_DARK.length);
  });

  it("offers a dark step for every light one", () => {
    expect(CATEGORICAL_DARK).toHaveLength(CATEGORICAL_LIGHT.length);
  });
});
