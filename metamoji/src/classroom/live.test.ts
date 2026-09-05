import { describe, expect, it } from "vitest";

import { editFor, forgetEdit } from "./live";
import { applyCompound } from "../editor/delta";
import type { ClassNoteChange } from "../ipc/api";
import { fromGeneric } from "../model/converter";
import { addNode, emptyTree } from "../model/generic";
import { MT_LAYER, MT_NOTE, MT_PAGE } from "../model/modelTypes";
import type { DrawUnit, NoteDocument } from "../model/types";

/** A class note as it arrives: the classroom's own names on page and layer. */
function classNote(): NoteDocument {
  const tree = emptyTree("root", MT_NOTE);
  addNode(tree, {
    id: "m14",
    parentId: "root",
    modelType: MT_PAGE,
    props: { pageId: "PAGE-4", paperWidth: 841.92, paperHeight: 595.32 },
  });
  addNode(tree, {
    id: "m15",
    parentId: "m14",
    modelType: MT_LAYER,
    props: { layerId: "PAGE-4_[layer-forUser]_9", layerType: "system:personal" },
  });
  tree.models.m14.children = ["m15"];
  return fromGeneric(tree);
}

const strokeChange = (id: string): ClassNoteChange => ({
  noteId: "n",
  boothId: "PAGE-4_[layer-forUser]_9",
  sequence: 1,
  pageId: "PAGE-4",
  layerId: "PAGE-4_[layer-forUser]_9",
  layerType: "system:personal",
  changes: [
    {
      kind: "stroke",
      id,
      stroke: {
        id,
        points: { $points: [10, 20, 0.5, 0, 30, 40, 0.5, 8] },
        color: "#188038",
        width: 2.4,
        penType: "ballpoint",
        opacity: 1,
      },
    },
  ],
});

const inkOf = (doc: NoteDocument) =>
  doc.pages[0].layers[0].units.filter((u): u is DrawUnit => u.type === "$draw");

describe("live classroom changes", () => {
  it("finds the page and layer by the names the classroom uses", () => {
    // Not this app's model ids: the note is a copy, and the room addresses the
    // original.
    const doc = classNote();
    const edit = editFor(doc, strokeChange("el 1"));
    expect(edit).not.toBeNull();
    const next = applyCompound(doc, edit!, false);
    const ink = inkOf(next);
    expect(ink).toHaveLength(1);
    expect(ink[0].strokes).toHaveLength(1);
    expect(ink[0].strokes[0].pen.color).toBe("#188038");
  });

  it("puts a second stroke in the unit the first one made", () => {
    let doc = classNote();
    doc = applyCompound(doc, editFor(doc, strokeChange("el 1"))!, false);
    doc = applyCompound(doc, editFor(doc, strokeChange("el 2"))!, false);
    expect(inkOf(doc)).toHaveLength(1);
    expect(inkOf(doc)[0].strokes).toHaveLength(2);
  });

  it("ignores a stroke it already has", () => {
    // A reconnect replays from the last mark; an overlap must not double up.
    let doc = classNote();
    doc = applyCompound(doc, editFor(doc, strokeChange("el 1"))!, false);
    expect(editFor(doc, strokeChange("el 1"))).toBeNull();
  });

  it("takes a stroke out again when the room says it is gone", () => {
    let doc = classNote();
    doc = applyCompound(doc, editFor(doc, strokeChange("el 1"))!, false);

    const removal: ClassNoteChange = {
      ...strokeChange("el 1"),
      changes: [{ kind: "remove", id: "el 1" }],
    };
    doc = applyCompound(doc, editFor(doc, removal)!, false);
    expect(inkOf(doc)[0].strokes).toHaveLength(0);
  });

  it("has nowhere to put a change for a page this note does not have", () => {
    const doc = classNote();
    expect(editFor(doc, { ...strokeChange("el 1"), pageId: "PAGE-99" })).toBeNull();
  });

  it("carries a unit the room sends", () => {
    const doc = classNote();
    const change: ClassNoteChange = {
      ...strokeChange("el 1"),
      changes: [
        {
          kind: "unit",
          unitId: "u-1",
          models: [
            {
              id: "u-1",
              parentId: null,
              modelType: "$text",
              props: { unitId: "u-1", x: 10, y: 20, width: 100, height: 30, text: "こんにちは" },
              children: [],
            },
          ],
        },
      ],
    };
    const next = applyCompound(doc, editFor(doc, change)!, false);
    const text = next.pages[0].layers[0].units.find((u) => u.type === "$text");
    expect(text).toBeDefined();
    expect(text && "text" in text ? text.text : "").toBe("こんにちは");
  });
});

describe("matching the room", () => {
  it("stops showing what the room no longer holds", () => {
    let doc = classNote();
    doc = applyCompound(doc, editFor(doc, strokeChange("el 1"))!, false);
    doc = applyCompound(doc, editFor(doc, strokeChange("el 2"))!, false);
    expect(inkOf(doc)[0].strokes).toHaveLength(2);

    const edit = forgetEdit(doc, ["el 1"]);
    doc = applyCompound(doc, edit!, false);
    const left = inkOf(doc)[0].strokes;
    expect(left).toHaveLength(1);
    expect(left[0].id).toBe("el 2");
  });

  it("does nothing when the note is already in step", () => {
    const doc = classNote();
    expect(forgetEdit(doc, ["el 1", "el 2"])).toBeNull();
    expect(forgetEdit(doc, [])).toBeNull();
  });

  it("leaves alone what the room never knew about", () => {
    // A stroke drawn here and not yet sent is not the room's to remove.
    let doc = classNote();
    doc = applyCompound(doc, editFor(doc, strokeChange("el 1"))!, false);
    expect(forgetEdit(doc, ["something else"])).toBeNull();
    expect(inkOf(doc)[0].strokes).toHaveLength(1);
  });
});
