/**
 * Class-box folder navigation.
 *
 * Folders inside a class box are *paths*, not ids — `SdMOFolder` is keyed by
 * `absPath` — so the trail back to the top is string work with no lookup table
 * behind it. Which also means an off-by-one in the slashes silently produces a
 * folder that cannot be navigated out of.
 */

import { describe, expect, it } from "vitest";

import { breadcrumbs } from "./LibraryScreen";

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
