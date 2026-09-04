import { describe, expect, it } from "vitest";

import { parsePageRange } from "./pdf";

describe("parsePageRange", () => {
  it("returns every page when the input is empty", () => {
    expect(parsePageRange("", 3)).toEqual([1, 2, 3]);
    expect(parsePageRange("   ", 3)).toEqual([1, 2, 3]);
  });

  it("parses single pages and ranges", () => {
    expect(parsePageRange("1", 10)).toEqual([1]);
    expect(parsePageRange("2-4", 10)).toEqual([2, 3, 4]);
    expect(parsePageRange("1, 3, 5", 10)).toEqual([1, 3, 5]);
    expect(parsePageRange("1-2, 5, 8-9", 10)).toEqual([1, 2, 5, 8, 9]);
  });

  it("treats an open range as running to the ends", () => {
    expect(parsePageRange("-3", 10)).toEqual([1, 2, 3]);
    expect(parsePageRange("8-", 10)).toEqual([8, 9, 10]);
  });

  it("clamps to the document and drops out-of-range pages", () => {
    expect(parsePageRange("1-100", 3)).toEqual([1, 2, 3]);
    expect(parsePageRange("0", 3)).toEqual([]);
    expect(parsePageRange("99", 3)).toEqual([]);
  });

  it("de-duplicates and sorts overlapping input", () => {
    expect(parsePageRange("3, 1-2, 2", 5)).toEqual([1, 2, 3]);
  });

  it("ignores junk rather than throwing", () => {
    expect(parsePageRange("abc", 5)).toEqual([]);
    expect(parsePageRange("1, abc, 3", 5)).toEqual([1, 3]);
    expect(parsePageRange(",,,", 5)).toEqual([]);
  });

  it("handles a reversed range as empty rather than looping", () => {
    expect(parsePageRange("5-2", 10)).toEqual([]);
  });
});
