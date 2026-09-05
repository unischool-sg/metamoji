/**
 * Applying what the classroom sends while the note is open.
 *
 * The relay pushes; there is nothing to poll. Rust holds the connection and
 * decodes each Direction (the payload is a serialised model, and there is no
 * reader for that up here), so what arrives is already a list of changes —
 * this turns them into an edit against the open document.
 *
 * Through `applyRemote`, never the normal edit path: someone else's writing
 * must not land on this user's undo stack, and must not echo back out as a
 * Direction of our own.
 */

import type { CompoundEdit, ModelDelta } from "../editor/delta";
import type { ClassNoteChange } from "../ipc/api";
import { sourceIdOf, strokeFromProp, unitFromGeneric } from "../model/converter";
import { newId } from "../model/ids";
import type { DrawUnit, Layer, NoteDocument, Page, Stroke, Unit } from "../model/types";

/** The element id a unit or stroke arrived from the room under. */
const ELEMENT_KEY = "$roomStrokeId";
const UNIT_ELEMENT_KEY = "$roomElementId";

/**
 * Takes out everything in `ids` — what a resync found the room no longer
 * holds. Erased on another device, or never delivered; either way the note is
 * showing something the class is not.
 */
export function forgetEdit(doc: NoteDocument, ids: readonly string[]): CompoundEdit | null {
  const children: ModelDelta[] = [];
  for (const id of ids) children.push(...removeDeltas(doc, id));
  if (children.length === 0) return null;
  return { editId: newId("edit"), label: "教室に合わせる", children, at: Date.now() };
}

/**
 * Builds the edit a change asks for, or `null` when the note has nowhere to
 * put it — a page that was never downloaded, most often.
 */
export function editFor(doc: NoteDocument, change: ClassNoteChange): CompoundEdit | null {
  const page = doc.pages.find((p) => sourceIdOf(p, "pageId") === change.pageId);
  if (!page) return null;

  const layer = change.layerId
    ? page.layers.find((l) => sourceIdOf(l, "layerId") === change.layerId)
    : (page.layers.find((l) => l.id === page.currentLayerId) ?? page.layers.at(-1));
  if (!layer) return null;

  const children: ModelDelta[] = [];
  for (const item of change.changes) {
    switch (item.kind) {
      case "stroke":
        children.push(...strokeDeltas(page, layer, item.id, item.stroke));
        break;
      case "unit":
        children.push(...unitDeltas(doc, page, layer, item));
        break;
      case "remove":
        children.push(...removeDeltas(doc, item.id));
        break;
      // The bytes are already in the note's asset store; the unit that
      // references them arrives as its own change.
      case "asset":
        break;
    }
  }
  if (children.length === 0) return null;
  return { editId: newId("edit"), label: "教室からの更新", children, at: Date.now() };
}

function drawUnitOf(layer: Layer): DrawUnit | undefined {
  return layer.units.find((u): u is DrawUnit => u.type === "$draw");
}

function strokeDeltas(
  page: Page,
  layer: Layer,
  elementId: string,
  raw: unknown,
): ModelDelta[] {
  const stroke = strokeFromProp(raw as never);
  if (!stroke) return [];
  // Remembered so a later removal, which names the room's id, can find it.
  const tagged: Stroke = { ...stroke, [ELEMENT_KEY]: elementId } as Stroke;

  const draw = drawUnitOf(layer);
  if (!draw) {
    // The layer has no ink on it yet. One unit to hold it, with the stroke
    // already inside — two deltas would leave a moment with an empty unit.
    const unit: DrawUnit = {
      id: newId("unit"),
      type: "$draw",
      x: stroke.bounds.x,
      y: stroke.bounds.y,
      width: stroke.bounds.width,
      height: stroke.bounds.height,
      rotation: 0,
      contentScale: 1,
      strokes: [tagged],
    };
    return [{ kind: "unit.add", pageId: page.id, layerId: layer.id, index: layer.units.length, unit }];
  }

  if (draw.strokes.some((s) => s.id === tagged.id)) return [];
  return [
    {
      kind: "stroke.add",
      pageId: page.id,
      layerId: layer.id,
      unitId: draw.id,
      index: draw.strokes.length,
      stroke: tagged,
    },
  ];
}

function unitDeltas(
  doc: NoteDocument,
  page: Page,
  layer: Layer,
  item: Extract<ClassNoteChange["changes"][number], { kind: "unit" }>,
): ModelDelta[] {
  const root = item.models[0];
  if (!root) return [];
  const unit = unitFromGeneric(root);
  if (!unit) return [];

  // An update re-sends the whole unit, so the one already here goes first.
  const out = removeDeltas(doc, item.unitId, (u) => u.id === unit.id);
  out.push({
    kind: "unit.add",
    pageId: page.id,
    layerId: layer.id,
    index: layer.units.length,
    unit,
  });
  return out;
}

/**
 * Takes out whatever the room named — a stroke by the id it arrived under, or
 * a unit by its own id or the element it came from.
 */
function removeDeltas(
  doc: NoteDocument,
  id: string,
  also?: (unit: Unit) => boolean,
): ModelDelta[] {
  const out: ModelDelta[] = [];
  for (const page of doc.pages) {
    for (const layer of page.layers) {
      for (const unit of layer.units) {
        if (unit.type === "$draw") {
          const index = unit.strokes.findIndex(
            (s) => s.id === id || (s as Stroke & Record<string, unknown>)[ELEMENT_KEY] === id,
          );
          if (index >= 0) {
            out.push({
              kind: "stroke.remove",
              pageId: page.id,
              layerId: layer.id,
              unitId: unit.id,
              index,
              stroke: unit.strokes[index],
            });
          }
        }
        const element = (unit as Unit & Record<string, unknown>)[UNIT_ELEMENT_KEY];
        if (element === id || also?.(unit)) {
          out.push({
            kind: "unit.remove",
            pageId: page.id,
            layerId: layer.id,
            index: layer.units.indexOf(unit),
            unit,
          });
        }
      }
    }
  }
  return out;
}
