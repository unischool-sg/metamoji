/**
 * Model deltas — the unit of change.
 *
 * docs/15 §6 recommends generating a `CompoundEdit { children: Vec<ModelDelta> }`
 * at the outermost `end_edit()`, and using that same object both as the undo
 * record and as the payload of a single `ModelChanged` event that a future
 * collaboration layer subscribes to. That is what this file defines.
 *
 * Every delta is invertible, so undo and redo are the same code path with a
 * direction flag — the original's `CompoundUndoPerformer` works this way too
 * (docs/15 §3), walking children forward for redo and backward for undo.
 */

import type { Layer, ModelId, NoteDocument, NoteMeta, Page, Stroke, Unit } from "../model/types";

export type ModelDelta =
  | { kind: "unit.add"; pageId: ModelId; layerId: ModelId; index: number; unit: Unit }
  | { kind: "unit.remove"; pageId: ModelId; layerId: ModelId; index: number; unit: Unit }
  | {
      kind: "unit.update";
      pageId: ModelId;
      layerId: ModelId;
      unitId: ModelId;
      before: Partial<Unit>;
      after: Partial<Unit>;
    }
  | {
      kind: "unit.reorder";
      pageId: ModelId;
      layerId: ModelId;
      unitId: ModelId;
      from: number;
      to: number;
    }
  | {
      kind: "stroke.add";
      pageId: ModelId;
      layerId: ModelId;
      unitId: ModelId;
      index: number;
      stroke: Stroke;
    }
  | {
      kind: "stroke.remove";
      pageId: ModelId;
      layerId: ModelId;
      unitId: ModelId;
      index: number;
      stroke: Stroke;
    }
  | { kind: "page.add"; index: number; page: Page }
  | { kind: "page.remove"; index: number; page: Page }
  | { kind: "page.update"; pageId: ModelId; before: Partial<Page>; after: Partial<Page> }
  | { kind: "layer.add"; pageId: ModelId; index: number; layer: Layer }
  | { kind: "layer.remove"; pageId: ModelId; index: number; layer: Layer }
  | { kind: "layer.update"; pageId: ModelId; layerId: ModelId; before: Partial<Layer>; after: Partial<Layer> }
  | { kind: "note.update"; before: Partial<NoteMeta>; after: Partial<NoteMeta> };

/**
 * A whole user gesture. One drawn stroke, one drag, one paste = one of these,
 * matching the original's "1 gesture = 1 undo entry" rule (docs/15 §3).
 */
export interface CompoundEdit {
  /**
   * Client-generated id. Two jobs: the collaboration layer uses it as the key
   * for at-least-once delivery, and the sender recognises the echo of its own
   * edit by it — the role docs/06 §4 gives `esid`.
   */
  editId: string;
  label: string;
  children: ModelDelta[];
  /** Wall-clock time of the commit, used to coalesce rapid edits if we ever want to. */
  at: number;
}

// ---------------------------------------------------------------------------
// Application
// ---------------------------------------------------------------------------

/**
 * Applies one delta and returns a new document. Structural sharing keeps this
 * cheap: only the page/layer/unit on the path to the change is rebuilt.
 */
export function applyDelta(doc: NoteDocument, delta: ModelDelta, undo: boolean): NoteDocument {
  switch (delta.kind) {
    case "unit.add":
      return undo
        ? removeUnit(doc, delta.pageId, delta.layerId, delta.index)
        : insertUnit(doc, delta.pageId, delta.layerId, delta.index, delta.unit);

    case "unit.remove":
      return undo
        ? insertUnit(doc, delta.pageId, delta.layerId, delta.index, delta.unit)
        : removeUnit(doc, delta.pageId, delta.layerId, delta.index);

    case "unit.update":
      return patchUnit(
        doc, delta.pageId, delta.layerId, delta.unitId,
        undo ? delta.before : delta.after,
      );

    case "unit.reorder":
      return undo
        ? moveUnit(doc, delta.pageId, delta.layerId, delta.to, delta.from)
        : moveUnit(doc, delta.pageId, delta.layerId, delta.from, delta.to);

    case "stroke.add":
      return undo
        ? removeStroke(doc, delta.pageId, delta.layerId, delta.unitId, delta.index)
        : insertStroke(doc, delta.pageId, delta.layerId, delta.unitId, delta.index, delta.stroke);

    case "stroke.remove":
      return undo
        ? insertStroke(doc, delta.pageId, delta.layerId, delta.unitId, delta.index, delta.stroke)
        : removeStroke(doc, delta.pageId, delta.layerId, delta.unitId, delta.index);

    case "page.add":
      return undo ? removePage(doc, delta.index) : insertPage(doc, delta.index, delta.page);

    case "page.remove":
      return undo ? insertPage(doc, delta.index, delta.page) : removePage(doc, delta.index);

    case "page.update":
      return patchPage(doc, delta.pageId, undo ? delta.before : delta.after);

    case "layer.add":
      return undo
        ? removeLayer(doc, delta.pageId, delta.index)
        : insertLayer(doc, delta.pageId, delta.index, delta.layer);

    case "layer.remove":
      return undo
        ? insertLayer(doc, delta.pageId, delta.index, delta.layer)
        : removeLayer(doc, delta.pageId, delta.index);

    case "layer.update":
      return patchLayer(doc, delta.pageId, delta.layerId, undo ? delta.before : delta.after);

    case "note.update":
      return { ...doc, meta: { ...doc.meta, ...(undo ? delta.before : delta.after) } };
  }
}

export function applyCompound(doc: NoteDocument, edit: CompoundEdit, undo: boolean): NoteDocument {
  let next = doc;
  if (undo) {
    // Reverse order when undoing, so index-based deltas stay consistent.
    for (let i = edit.children.length - 1; i >= 0; i--) {
      next = applyDelta(next, edit.children[i], true);
    }
  } else {
    for (const child of edit.children) next = applyDelta(next, child, false);
  }
  return next;
}

// ---------------------------------------------------------------------------
// Structural helpers — each returns a new document
// ---------------------------------------------------------------------------

function mapPage(doc: NoteDocument, pageId: ModelId, fn: (p: Page) => Page): NoteDocument {
  let touched = false;
  const pages = doc.pages.map((p) => {
    if (p.id !== pageId) return p;
    touched = true;
    return fn(p);
  });
  return touched ? { ...doc, pages } : doc;
}

function mapLayer(
  doc: NoteDocument, pageId: ModelId, layerId: ModelId, fn: (l: Layer) => Layer,
): NoteDocument {
  return mapPage(doc, pageId, (page) => ({
    ...page,
    layers: page.layers.map((l) => (l.id === layerId ? fn(l) : l)),
  }));
}

function mapUnit(
  doc: NoteDocument, pageId: ModelId, layerId: ModelId, unitId: ModelId, fn: (u: Unit) => Unit,
): NoteDocument {
  return mapLayer(doc, pageId, layerId, (layer) => ({
    ...layer,
    units: layer.units.map((u) => (u.id === unitId ? fn(u) : u)),
  }));
}

function insertUnit(
  doc: NoteDocument, pageId: ModelId, layerId: ModelId, index: number, unit: Unit,
): NoteDocument {
  return mapLayer(doc, pageId, layerId, (layer) => {
    const units = layer.units.slice();
    units.splice(clampIndex(index, units.length), 0, unit);
    return { ...layer, units };
  });
}

function removeUnit(
  doc: NoteDocument, pageId: ModelId, layerId: ModelId, index: number,
): NoteDocument {
  return mapLayer(doc, pageId, layerId, (layer) => {
    const units = layer.units.slice();
    units.splice(index, 1);
    return { ...layer, units };
  });
}

function moveUnit(
  doc: NoteDocument, pageId: ModelId, layerId: ModelId, from: number, to: number,
): NoteDocument {
  return mapLayer(doc, pageId, layerId, (layer) => {
    const units = layer.units.slice();
    const [moved] = units.splice(from, 1);
    if (!moved) return layer;
    units.splice(clampIndex(to, units.length), 0, moved);
    return { ...layer, units };
  });
}

function patchUnit(
  doc: NoteDocument, pageId: ModelId, layerId: ModelId, unitId: ModelId, patch: Partial<Unit>,
): NoteDocument {
  return mapUnit(doc, pageId, layerId, unitId, (u) => ({ ...u, ...patch }) as Unit);
}

function insertStroke(
  doc: NoteDocument, pageId: ModelId, layerId: ModelId, unitId: ModelId,
  index: number, stroke: Stroke,
): NoteDocument {
  return mapUnit(doc, pageId, layerId, unitId, (u) => {
    if (u.type !== "$draw") return u;
    const strokes = u.strokes.slice();
    strokes.splice(clampIndex(index, strokes.length), 0, stroke);
    return { ...u, strokes };
  });
}

function removeStroke(
  doc: NoteDocument, pageId: ModelId, layerId: ModelId, unitId: ModelId, index: number,
): NoteDocument {
  return mapUnit(doc, pageId, layerId, unitId, (u) => {
    if (u.type !== "$draw") return u;
    const strokes = u.strokes.slice();
    strokes.splice(index, 1);
    return { ...u, strokes };
  });
}

function insertPage(doc: NoteDocument, index: number, page: Page): NoteDocument {
  const pages = doc.pages.slice();
  pages.splice(clampIndex(index, pages.length), 0, page);
  return { ...doc, pages };
}

function removePage(doc: NoteDocument, index: number): NoteDocument {
  const pages = doc.pages.slice();
  pages.splice(index, 1);
  return { ...doc, pages };
}

function patchPage(doc: NoteDocument, pageId: ModelId, patch: Partial<Page>): NoteDocument {
  return mapPage(doc, pageId, (p) => ({ ...p, ...patch }));
}

function insertLayer(
  doc: NoteDocument, pageId: ModelId, index: number, layer: Layer,
): NoteDocument {
  return mapPage(doc, pageId, (page) => {
    const layers = page.layers.slice();
    layers.splice(clampIndex(index, layers.length), 0, layer);
    return { ...page, layers };
  });
}

function removeLayer(doc: NoteDocument, pageId: ModelId, index: number): NoteDocument {
  return mapPage(doc, pageId, (page) => {
    const layers = page.layers.slice();
    const [removed] = layers.splice(index, 1);
    const currentLayerId =
      removed && page.currentLayerId === removed.id
        ? (layers[Math.min(index, layers.length - 1)]?.id ?? page.currentLayerId)
        : page.currentLayerId;
    return { ...page, layers, currentLayerId };
  });
}

function patchLayer(
  doc: NoteDocument, pageId: ModelId, layerId: ModelId, patch: Partial<Layer>,
): NoteDocument {
  return mapLayer(doc, pageId, layerId, (l) => ({ ...l, ...patch }));
}

function clampIndex(index: number, length: number): number {
  return index < 0 ? 0 : index > length ? length : index;
}

// ---------------------------------------------------------------------------
// Which pages a compound edit touched — used to invalidate render caches
// ---------------------------------------------------------------------------

export function affectedPageIds(edit: CompoundEdit): Set<ModelId> {
  const ids = new Set<ModelId>();
  for (const d of edit.children) {
    switch (d.kind) {
      case "page.add":
      case "page.remove":
        ids.add(d.page.id);
        break;
      case "note.update":
        break;
      default:
        ids.add(d.pageId);
    }
  }
  return ids;
}
