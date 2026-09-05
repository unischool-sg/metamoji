/**
 * The editor ↔ classroom seam.
 *
 * docs/15 §6.3 recommends one `ModelChanged` hook that the collaboration layer
 * subscribes to, replacing the original's `sendDirection` calls scattered across
 * a dozen unit classes (docs/15 §4). These tests pin the two properties that
 * makes worth having:
 *
 *   - a local edit is broadcast exactly once, whatever kind of edit it is;
 *   - an edit that came from a peer is neither re-broadcast nor added to this
 *     user's undo stack.
 */

import { beforeEach, describe, expect, it } from "vitest";

import { attachClassroomBridge, detachClassroomBridge } from "./bridge";
import type { CompoundEdit } from "../editor/delta";
import { createDocument, createTextUnit } from "../model/factory";
import { onLocalEdit, useEditorStore } from "../store/editorStore";

function openNote(title = "共同編集") {
  const doc = createDocument(title);
  useEditorStore.getState().openDocument(doc, "note_shared");
  return useEditorStore.getState().session!;
}

function addUnit(label = "追加") {
  const session = useEditorStore.getState().session!;
  const page = session.document.pages[0];
  session.transact(label, () => {
    session.record({
      kind: "unit.add",
      pageId: page.id,
      layerId: page.layers[0].id,
      index: page.layers[0].units.length,
      unit: createTextUnit(0, 0),
    });
  });
}

beforeEach(() => {
  detachClassroomBridge();
  useEditorStore.getState().closeDocument();
});

describe("onLocalEdit", () => {
  it("fires once per committed gesture, with the note id", () => {
    const seen: { noteId: string; edit: CompoundEdit }[] = [];
    const off = onLocalEdit((noteId, edit) => seen.push({ noteId, edit }));

    openNote();
    addUnit();

    expect(seen).toHaveLength(1);
    expect(seen[0].noteId).toBe("note_shared");
    expect(seen[0].edit.children).toHaveLength(1);
    off();
  });

  it("gives every edit a distinct id, which delivery dedup depends on", () => {
    const ids: string[] = [];
    const off = onLocalEdit((_id, edit) => ids.push(edit.editId));

    openNote();
    addUnit();
    addUnit();

    expect(ids).toHaveLength(2);
    expect(new Set(ids).size).toBe(2);
    off();
  });

  it("does not fire for undo or redo", () => {
    openNote();
    addUnit();

    const seen: CompoundEdit[] = [];
    const off = onLocalEdit((_id, edit) => seen.push(edit));

    useEditorStore.getState().undo();
    useEditorStore.getState().redo();

    // Undo is not new work, and the peer that made the original edit is the one
    // entitled to take it back.
    expect(seen).toHaveLength(0);
    off();
  });

  it("does not fire for a remote edit, which would echo it straight back", () => {
    const session = openNote();
    const page = session.document.pages[0];

    const seen: CompoundEdit[] = [];
    const off = onLocalEdit((_id, edit) => seen.push(edit));

    session.applyRemote({
      editId: "remote_1",
      label: "相手の編集",
      at: Date.now(),
      children: [
        {
          kind: "unit.add",
          pageId: page.id,
          layerId: page.layers[0].id,
          index: 0,
          unit: createTextUnit(10, 10),
        },
      ],
    });

    expect(seen).toHaveLength(0);
    off();
  });

  it("stops firing once unsubscribed", () => {
    const seen: CompoundEdit[] = [];
    const off = onLocalEdit((_id, edit) => seen.push(edit));

    openNote();
    addUnit();
    off();
    addUnit();

    expect(seen).toHaveLength(1);
  });
});

describe("applyRemote", () => {
  it("applies a peer's edit to the document", () => {
    const session = openNote();
    const page = session.document.pages[0];

    session.applyRemote({
      editId: "remote_1",
      label: "相手の編集",
      at: Date.now(),
      children: [
        {
          kind: "unit.add",
          pageId: page.id,
          layerId: page.layers[0].id,
          index: 0,
          unit: createTextUnit(10, 10),
        },
      ],
    });

    expect(session.document.pages[0].layers[0].units).toHaveLength(1);
  });

  it("does not put a peer's edit on this user's undo stack", () => {
    const session = openNote();
    const page = session.document.pages[0];

    session.applyRemote({
      editId: "remote_1",
      label: "相手の編集",
      at: Date.now(),
      children: [
        {
          kind: "unit.add",
          pageId: page.id,
          layerId: page.layers[0].id,
          index: 0,
          unit: createTextUnit(10, 10),
        },
      ],
    });

    // Being able to undo someone else's work is not a feature.
    expect(session.canUndo).toBe(false);
  });

  it("cancels a gesture in progress, which would otherwise commit onto a moved document", () => {
    const session = openNote();
    const page = session.document.pages[0];

    session.beginEdit("描画中");
    session.record({
      kind: "unit.add",
      pageId: page.id,
      layerId: page.layers[0].id,
      index: 0,
      unit: createTextUnit(0, 0),
    });

    session.applyRemote({
      editId: "remote_1",
      label: "相手の編集",
      at: Date.now(),
      children: [
        {
          kind: "unit.add",
          pageId: page.id,
          layerId: page.layers[0].id,
          index: 0,
          unit: createTextUnit(50, 50),
        },
      ],
    });

    // The half-finished local gesture was rolled back, leaving only the peer's.
    expect(session.inTransaction).toBe(false);
    expect(session.document.pages[0].layers[0].units).toHaveLength(1);
    expect(session.document.pages[0].layers[0].units[0].x).toBe(50);
  });

  it("ignores an empty edit", () => {
    const session = openNote();
    const before = session.document.revision;
    session.applyRemote({ editId: "e", label: "空", at: Date.now(), children: [] });
    expect(session.document.revision).toBe(before);
  });
});

describe("attachClassroomBridge", () => {
  it("is idempotent, so a re-entered room does not double-send", () => {
    let calls = 0;
    const off = onLocalEdit(() => (calls += 1));

    attachClassroomBridge();
    attachClassroomBridge();

    openNote();
    addUnit();

    // One listener of ours plus the bridge's; the bridge must not have added
    // itself twice.
    expect(calls).toBe(1);
    detachClassroomBridge();
    off();
  });
});
