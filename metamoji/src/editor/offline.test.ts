import { describe, expect, it } from "vitest";

import {
  OFFLINE_LAYER,
  PERSONAL_LAYER,
  beginOfflineEditing,
  isOfflineMode,
  mergeOfflineEditing,
  offlineUnitCount,
} from "./offline";
import { EditSession } from "./session";
import { createDocument, createTextUnit } from "../model/factory";
import type { Page } from "../model/types";

function open() {
  const session = new EditSession(createDocument("オフライン"));
  return session;
}

const page = (session: EditSession): Page => session.document.pages[0];

function drawInto(session: EditSession, layerId: string, count: number) {
  session.transact("描く", () => {
    for (let i = 0; i < count; i++) {
      const layer = page(session).layers.find((l) => l.id === layerId)!;
      session.record({
        kind: "unit.add",
        pageId: page(session).id,
        layerId,
        index: layer.units.length,
        unit: createTextUnit(i * 10, 0),
      });
    }
  });
}

describe("beginOfflineEditing", () => {
  it("creates an isolated layer and makes it active", () => {
    const session = open();
    const layerId = beginOfflineEditing(session, page(session));

    const offline = page(session).layers.find((l) => l.id === layerId);
    expect(offline?.layerType).toBe(OFFLINE_LAYER);
    // Everything drawn from here lands in it without any tool knowing.
    expect(page(session).currentLayerId).toBe(layerId);
  });

  it("is idempotent", () => {
    const session = open();
    const first = beginOfflineEditing(session, page(session));
    const again = beginOfflineEditing(session, page(session));

    expect(again).toBe(first);
    expect(page(session).layers.filter((l) => l.layerType === OFFLINE_LAYER)).toHaveLength(1);
  });

  it("reports whether a page is holding offline work", () => {
    const session = open();
    expect(isOfflineMode(page(session))).toBe(false);

    const layerId = beginOfflineEditing(session, page(session))!;
    expect(isOfflineMode(page(session))).toBe(true);
    expect(offlineUnitCount(page(session))).toBe(0);

    drawInto(session, layerId, 3);
    expect(offlineUnitCount(page(session))).toBe(3);
  });
});

describe("mergeOfflineEditing", () => {
  it("moves the offline layer's units into a personal layer and removes it", () => {
    const session = open();
    const layerId = beginOfflineEditing(session, page(session))!;
    drawInto(session, layerId, 3);

    const result = mergeOfflineEditing(session, page(session));

    expect(result.moved).toBe(3);
    // docs/14 §2: a layer merge, not an operation replay.
    expect(page(session).layers.some((l) => l.layerType === OFFLINE_LAYER)).toBe(false);

    const personal = page(session).layers.find((l) => l.layerType === PERSONAL_LAYER);
    expect(personal?.units).toHaveLength(3);
  });

  it("reuses an existing personal layer rather than making a second one", () => {
    const session = open();

    // First offline stint.
    const first = beginOfflineEditing(session, page(session))!;
    drawInto(session, first, 2);
    mergeOfflineEditing(session, page(session));

    // Second stint later in the lesson.
    const second = beginOfflineEditing(session, page(session))!;
    drawInto(session, second, 1);
    mergeOfflineEditing(session, page(session));

    const personals = page(session).layers.filter((l) => l.layerType === PERSONAL_LAYER);
    expect(personals).toHaveLength(1);
    expect(personals[0].units).toHaveLength(3);
  });

  it("leaves the active layer pointing at something that exists", () => {
    const session = open();
    const layerId = beginOfflineEditing(session, page(session))!;
    drawInto(session, layerId, 1);

    mergeOfflineEditing(session, page(session));

    const current = page(session).currentLayerId;
    // Otherwise the next stroke would have nowhere to go.
    expect(page(session).layers.some((l) => l.id === current)).toBe(true);
  });

  it("does nothing when there was no offline work", () => {
    const session = open();
    const before = page(session).layers.length;

    expect(mergeOfflineEditing(session, page(session))).toEqual({
      moved: 0,
      targetLayerId: null,
    });
    expect(page(session).layers).toHaveLength(before);
  });

  it("discards the layer and its contents when asked", () => {
    const session = open();
    const layerId = beginOfflineEditing(session, page(session))!;
    drawInto(session, layerId, 4);

    // docs/14 §2's removeMode: an explicit "that was a mistake".
    mergeOfflineEditing(session, page(session), true);

    expect(page(session).layers.some((l) => l.layerType === OFFLINE_LAYER)).toBe(false);
    expect(page(session).layers.some((l) => l.layerType === PERSONAL_LAYER)).toBe(false);
  });

  it("keeps the merge undoable as one step", () => {
    const session = open();
    const layerId = beginOfflineEditing(session, page(session))!;
    drawInto(session, layerId, 2);

    mergeOfflineEditing(session, page(session));
    session.undo();

    // Back to holding the offline layer with its work intact.
    expect(isOfflineMode(page(session))).toBe(true);
    expect(offlineUnitCount(page(session))).toBe(2);
  });

  it("does not disturb work on other layers", () => {
    const session = open();
    const contentLayer = page(session).layers[0].id;
    drawInto(session, contentLayer, 2);

    const layerId = beginOfflineEditing(session, page(session))!;
    drawInto(session, layerId, 3);
    mergeOfflineEditing(session, page(session));

    // The shared layer is untouched: offline work is isolated by construction,
    // which is what removes the possibility of a conflict (docs/14 §2).
    const content = page(session).layers.find((l) => l.id === contentLayer);
    expect(content?.units).toHaveLength(2);
  });
});
