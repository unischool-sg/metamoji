import { describe, expect, it, vi } from "vitest";

import { createDocument, createTextUnit } from "../model/factory";
import type { NoteDocument, TextUnit } from "../model/types";
import { EditSession, type SessionEvent } from "./session";

function docWithText(): { doc: NoteDocument; unit: TextUnit } {
  const doc = createDocument("undo テスト");
  const unit = createTextUnit(10, 20);
  unit.text = "初期";
  doc.pages[0].layers[0].units.push(unit);
  return { doc, unit };
}

function addUnit(session: EditSession, label = "追加") {
  const doc = session.document;
  const page = doc.pages[0];
  const layer = page.layers[0];
  const unit = createTextUnit(0, 0);
  session.transact(label, () => {
    session.record({
      kind: "unit.add",
      pageId: page.id,
      layerId: layer.id,
      index: layer.units.length,
      unit,
    });
  });
  return unit;
}

describe("EditSession", () => {
  it("applies a recorded delta immediately", () => {
    const session = new EditSession(createDocument());
    expect(session.document.pages[0].layers[0].units).toHaveLength(0);
    addUnit(session);
    expect(session.document.pages[0].layers[0].units).toHaveLength(1);
  });

  it("undoes and redoes a change", () => {
    const session = new EditSession(createDocument());
    addUnit(session);

    expect(session.undo()).toBe(true);
    expect(session.document.pages[0].layers[0].units).toHaveLength(0);

    expect(session.redo()).toBe(true);
    expect(session.document.pages[0].layers[0].units).toHaveLength(1);
  });

  it("collapses a nested bracket into one undo entry", () => {
    const session = new EditSession(createDocument());
    const page = session.document.pages[0];
    const layer = page.layers[0];

    // One gesture that happens to touch three units must undo as one step —
    // this is the property docs/15 §3 describes for EditContext/CompoundUndo.
    session.beginEdit("まとめて追加");
    for (let i = 0; i < 3; i++) {
      session.beginEdit("入れ子");
      session.record({
        kind: "unit.add",
        pageId: page.id,
        layerId: layer.id,
        index: i,
        unit: createTextUnit(i * 10, 0),
      });
      session.endEdit();
    }
    session.endEdit();

    expect(session.document.pages[0].layers[0].units).toHaveLength(3);
    session.undo();
    expect(session.document.pages[0].layers[0].units).toHaveLength(0);
    expect(session.canUndo).toBe(false);
  });

  it("emits exactly one ModelChanged per committed gesture", () => {
    const session = new EditSession(createDocument());
    const events: SessionEvent[] = [];
    session.subscribe((e) => events.push(e));

    const page = session.document.pages[0];
    const layer = page.layers[0];

    session.beginEdit("複数変更");
    for (let i = 0; i < 3; i++) {
      session.record({
        kind: "unit.add",
        pageId: page.id,
        layerId: layer.id,
        index: i,
        unit: createTextUnit(0, 0),
      });
    }
    session.endEdit();

    // Three deltas, one event — the single hook a collaboration layer would
    // subscribe to (docs/15 §6.3).
    expect(events).toHaveLength(1);
    expect(events[0].type).toBe("ModelChanged");
    if (events[0].type === "ModelChanged") {
      expect(events[0].edit.children).toHaveLength(3);
      expect(events[0].source).toBe("local");
    }
  });

  it("tags undo and redo events with their own source", () => {
    const session = new EditSession(createDocument());
    addUnit(session);

    const sources: string[] = [];
    session.subscribe((e) => {
      if (e.type === "ModelChanged") sources.push(e.source);
    });

    session.undo();
    session.redo();
    // Phase C needs this distinction so a remote peer's edit is not echoed back.
    expect(sources).toEqual(["undo", "redo"]);
  });

  it("discards the redo tail when a new edit lands", () => {
    const session = new EditSession(createDocument());
    addUnit(session);
    session.undo();
    expect(session.canRedo).toBe(true);

    addUnit(session);
    expect(session.canRedo).toBe(false);
  });

  it("emits nothing for an empty transaction", () => {
    const session = new EditSession(createDocument());
    const listener = vi.fn();
    session.subscribe(listener);

    session.beginEdit("何もしない");
    session.endEdit();

    expect(listener).not.toHaveBeenCalled();
    expect(session.canUndo).toBe(false);
  });

  it("refuses to record outside a transaction", () => {
    const session = new EditSession(createDocument());
    const page = session.document.pages[0];
    expect(() =>
      session.record({
        kind: "unit.add",
        pageId: page.id,
        layerId: page.layers[0].id,
        index: 0,
        unit: createTextUnit(0, 0),
      }),
    ).toThrow(/outside beginEdit/);
  });

  it("rolls back an aborted gesture", () => {
    const session = new EditSession(createDocument());
    const page = session.document.pages[0];

    session.beginEdit("途中で中止");
    session.record({
      kind: "unit.add",
      pageId: page.id,
      layerId: page.layers[0].id,
      index: 0,
      unit: createTextUnit(0, 0),
    });
    expect(session.document.pages[0].layers[0].units).toHaveLength(1);

    session.abortEdit();
    expect(session.document.pages[0].layers[0].units).toHaveLength(0);
    expect(session.canUndo).toBe(false);
  });

  it("rolls back when the transaction body throws", () => {
    const session = new EditSession(createDocument());
    const page = session.document.pages[0];

    expect(() =>
      session.transact("失敗する編集", () => {
        session.record({
          kind: "unit.add",
          pageId: page.id,
          layerId: page.layers[0].id,
          index: 0,
          unit: createTextUnit(0, 0),
        });
        throw new Error("boom");
      }),
    ).toThrow("boom");

    expect(session.document.pages[0].layers[0].units).toHaveLength(0);
  });

  it("restores the previous value when undoing a property change", () => {
    const { doc, unit } = docWithText();
    const session = new EditSession(doc);
    const page = doc.pages[0];

    session.transact("文字を編集", () => {
      session.record({
        kind: "unit.update",
        pageId: page.id,
        layerId: page.layers[0].id,
        unitId: unit.id,
        before: { text: "初期" },
        after: { text: "変更後" },
      });
    });

    const changed = session.document.pages[0].layers[0].units[0] as TextUnit;
    expect(changed.text).toBe("変更後");

    session.undo();
    const reverted = session.document.pages[0].layers[0].units[0] as TextUnit;
    expect(reverted.text).toBe("初期");
  });

  it("undoes a multi-delta gesture in reverse, keeping indices valid", () => {
    const session = new EditSession(createDocument());
    const page = session.document.pages[0];
    const layer = page.layers[0];

    session.beginEdit("三つ追加");
    for (let i = 0; i < 3; i++) {
      session.record({
        kind: "unit.add",
        pageId: page.id,
        layerId: layer.id,
        index: i,
        unit: createTextUnit(i, 0),
      });
    }
    session.endEdit();

    session.undo();
    expect(session.document.pages[0].layers[0].units).toHaveLength(0);
    session.redo();
    expect(session.document.pages[0].layers[0].units.map((u) => u.x)).toEqual([0, 1, 2]);
  });

  it("bumps the revision on every commit, for later sync", () => {
    const session = new EditSession(createDocument());
    expect(session.document.revision).toBe(0);
    addUnit(session);
    expect(session.document.revision).toBe(1);
    session.undo();
    expect(session.document.revision).toBe(2);
  });

  it("resets history when the document is replaced", () => {
    const session = new EditSession(createDocument());
    addUnit(session);
    expect(session.canUndo).toBe(true);

    session.replaceDocument(createDocument("別のノート"));
    expect(session.canUndo).toBe(false);
    expect(session.canRedo).toBe(false);
    expect(session.isDirty).toBe(false);
  });
});
