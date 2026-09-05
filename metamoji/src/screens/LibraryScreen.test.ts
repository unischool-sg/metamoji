/**
 * Class-box folder navigation.
 *
 * Folders inside a class box are *paths*, not ids — `SdMOFolder` is keyed by
 * `absPath` — so the trail back to the top is string work with no lookup table
 * behind it. Which also means an off-by-one in the slashes silently produces a
 * folder that cannot be navigated out of.
 */

import { describe, expect, it } from "vitest";

import { breadcrumbs, selectionAfterClick } from "./LibraryScreen";

describe("breadcrumbs", () => {
  it("is empty at the top level", () => {
    // The "Top" crumb is rendered separately; a trail here would duplicate it.
    expect(breadcrumbs("/")).toEqual([]);
    expect(breadcrumbs("")).toEqual([]);
  });

  it("accumulates a path per level", () => {
    expect(breadcrumbs("/算数/4月/")).toEqual([
      { name: "算数", path: "/算数/" },
      { name: "4月", path: "/算数/4月/" },
    ]);
  });

  it("gives every crumb a path that can be navigated back to", () => {
    // Each crumb's path must be exactly the folder's `absPath`, or clicking it
    // lands somewhere with no contents.
    const trail = breadcrumbs("/a/b/c/");
    expect(trail.map((c) => c.path)).toEqual(["/a/", "/a/b/", "/a/b/c/"]);
    for (const crumb of trail) {
      expect(crumb.path.startsWith("/")).toBe(true);
      expect(crumb.path.endsWith("/")).toBe(true);
    }
  });

  it("tolerates a path missing its outer slashes", () => {
    expect(breadcrumbs("算数")).toEqual([{ name: "算数", path: "/算数/" }]);
  });
});

/**
 * Multi-select in the grid.
 *
 * The rule that matters is shift-click: it decides which notes a bulk delete
 * takes, and an off-by-one there deletes a note nobody picked.
 */
describe("selectionAfterClick", () => {
  const ids = ["a", "b", "c", "d"];
  const none = new Set<string>();

  it("toggles a note on and off", () => {
    const on = selectionAfterClick(ids, none, null, "b", false);
    expect([...on]).toEqual(["b"]);
    expect([...selectionAfterClick(ids, on, "b", "b", false)]).toEqual([]);
  });

  it("keeps notes selected earlier", () => {
    const first = selectionAfterClick(ids, none, null, "a", false);
    expect([...selectionAfterClick(ids, first, "a", "c", false)]).toEqual(["a", "c"]);
  });

  it("fills in the run on shift-click, in both directions", () => {
    const from = new Set(["b"]);
    expect([...selectionAfterClick(ids, from, "b", "d", true)].sort()).toEqual(["b", "c", "d"]);
    expect([...selectionAfterClick(ids, from, "b", "a", true)].sort()).toEqual(["a", "b"]);
  });

  it("never unselects on shift-click", () => {
    // Shift-clicking inside an existing run extends it; a toggle here would
    // punch a hole in the run the user is drawing.
    const run = new Set(["a", "b", "c"]);
    expect([...selectionAfterClick(ids, run, "a", "b", true)].sort()).toEqual(["a", "b", "c"]);
  });

  it("falls back to a plain toggle when the anchor has left the grid", () => {
    // The anchor note can be trashed or filtered out between the two clicks.
    expect([...selectionAfterClick(ids, none, "gone", "c", true)]).toEqual(["c"]);
    expect([...selectionAfterClick(ids, none, null, "c", true)]).toEqual(["c"]);
  });

  it("does not mutate the selection it was given", () => {
    const before = new Set(["a"]);
    selectionAfterClick(ids, before, null, "b", false);
    expect([...before]).toEqual(["a"]);
  });
});
