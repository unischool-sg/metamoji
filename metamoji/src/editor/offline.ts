/**
 * Offline editing, by layer separation.
 *
 * docs/14 §2 documents how the original handles this, and the choice is worth
 * copying exactly. Work done while disconnected does not go into a queue of
 * operations to replay — it goes into a **separate layer**
 * (`system:offline_personal`). On reconnect the layer's contents are *moved*
 * wholesale into the author's persistent personal layer (`system:personal`) and
 * the empty offline layer is deleted.
 *
 * docs/14 §2 spells out why that beats operation replay:
 *
 * > 個々の操作をキューイングするのではなく、構造的に隔離された1レイヤーが
 * > まるごと作られる … アクセス範囲を分離することで衝突可能性そのものを
 * > 設計上排除している(真のCRDT/OTは実装していない)
 *
 * Because a participant's offline work only ever lands in a layer nobody else
 * writes to, a concurrent edit by someone else cannot collide with it. The
 * conflict is designed out rather than resolved — no CRDT, no OT, no merge
 * algorithm that can produce a page neither author drew.
 *
 * The whole operation is expressible in the delta vocabulary phase A already
 * had: move each unit, then remove the layer. No new primitive was needed.
 */

import type { EditSession } from "./session";
import { createLayer } from "../model/factory";
import type { Layer, ModelId, Page } from "../model/types";

export const OFFLINE_LAYER = "system:offline_personal";
export const PERSONAL_LAYER = "system:personal";

export function findLayerByType(page: Page, layerType: string): Layer | undefined {
  return page.layers.find((l) => l.layerType === layerType);
}

export function isOfflineMode(page: Page): boolean {
  return findLayerByType(page, OFFLINE_LAYER) !== undefined;
}

/**
 * Starts offline editing on a page.
 *
 * Creates the isolated layer and makes it the active one, so everything drawn
 * from here lands in it without any tool needing to know.
 */
export function beginOfflineEditing(session: EditSession, page: Page): ModelId | null {
  if (isOfflineMode(page)) return findLayerByType(page, OFFLINE_LAYER)?.id ?? null;

  const layer: Layer = {
    ...createLayer("オフライン編集"),
    layerType: OFFLINE_LAYER,
  };

  session.transact("オフライン編集を開始", () => {
    session.record({
      kind: "layer.add",
      pageId: page.id,
      index: page.layers.length,
      layer,
    });
    session.record({
      kind: "page.update",
      pageId: page.id,
      before: { currentLayerId: page.currentLayerId },
      after: { currentLayerId: layer.id },
    });
  });

  return layer.id;
}

export interface MergeResult {
  moved: number;
  targetLayerId: ModelId | null;
}

/**
 * Merges offline work back in.
 *
 * This is docs/14 §2's `reflectOfflineEdit`: move the offline layer's elements
 * into the personal layer, then delete the offline layer. It is a layer merge,
 * not an operation replay — 「操作リプレイではなくレイヤーマージ」.
 *
 * `discard` is the doc's `removeMode=true`: drop the layer and its contents
 * instead of merging, for a user who decides the offline work was a mistake.
 */
export function mergeOfflineEditing(
  session: EditSession,
  page: Page,
  discard = false,
): MergeResult {
  const offline = findLayerByType(page, OFFLINE_LAYER);
  if (!offline) return { moved: 0, targetLayerId: null };

  const offlineIndex = page.layers.findIndex((l) => l.id === offline.id);

  if (discard) {
    session.transact("オフライン編集を破棄", () => {
      session.record({
        kind: "layer.remove",
        pageId: page.id,
        index: offlineIndex,
        layer: offline,
      });
      restoreActiveLayer(session, page, offline.id);
    });
    return { moved: 0, targetLayerId: null };
  }

  // The destination is the author's own persistent layer, created on first use.
  let personal = findLayerByType(page, PERSONAL_LAYER);
  const needsPersonal = personal === undefined;
  if (!personal) {
    personal = { ...createLayer("個人レイヤー"), layerType: PERSONAL_LAYER };
  }
  const target = personal;

  session.transact("オフライン編集を反映", () => {
    if (needsPersonal) {
      session.record({
        kind: "layer.add",
        pageId: page.id,
        // Below the offline layer, so the offline one is still last and its
        // index is unchanged when it is removed below.
        index: offlineIndex,
        layer: target,
      });
    }

    // Move each unit across. Removing back-to-front keeps the source indices
    // valid as the list shrinks.
    for (let i = offline.units.length - 1; i >= 0; i--) {
      session.record({
        kind: "unit.remove",
        pageId: page.id,
        layerId: offline.id,
        index: i,
        unit: offline.units[i],
      });
    }
    offline.units.forEach((unit, i) => {
      session.record({
        kind: "unit.add",
        pageId: page.id,
        layerId: target.id,
        index: target.units.length + i,
        unit,
      });
    });

    // Then the now-empty offline layer goes away.
    session.record({
      kind: "layer.remove",
      pageId: page.id,
      index: needsPersonal ? offlineIndex + 1 : offlineIndex,
      layer: { ...offline, units: [] },
    });

    restoreActiveLayer(session, page, offline.id, target.id);
  });

  return { moved: offline.units.length, targetLayerId: target.id };
}

/**
 * Points the page's active layer somewhere that still exists.
 *
 * Without this the page would keep pointing at the deleted offline layer and
 * the next stroke would have nowhere to go.
 */
function restoreActiveLayer(
  session: EditSession,
  page: Page,
  removedLayerId: ModelId,
  preferredId?: ModelId,
): void {
  if (page.currentLayerId !== removedLayerId) return;

  const fallback =
    preferredId ??
    page.layers.find((l) => l.id !== removedLayerId && l.layerType === "content")?.id ??
    page.layers.find((l) => l.id !== removedLayerId)?.id;
  if (!fallback) return;

  session.record({
    kind: "page.update",
    pageId: page.id,
    before: { currentLayerId: page.currentLayerId },
    after: { currentLayerId: fallback },
  });
}

/** How much unsynced offline work a page is holding. */
export function offlineUnitCount(page: Page): number {
  return findLayerByType(page, OFFLINE_LAYER)?.units.length ?? 0;
}
