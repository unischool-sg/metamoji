import { beforeEach, describe, expect, it } from "vitest";

import { useEditorStore } from "./editorStore";
import { createDocument, createTextUnit } from "../model/factory";
import type { DrawUnit, NoteDocument } from "../model/types";

function open(doc: NoteDocument = createDocument()) {
  useEditorStore.getState().openDocument(doc, "note_test");
  return useEditorStore.getState();
}

const doc = () => useEditorStore.getState().doc!;
const page = (i = 0) => doc().pages[i];

beforeEach(() => {
  useEditorStore.getState().closeDocument();
});

describe("pages", () => {
  it("adds a page after the current one and moves to it", () => {
    open();
    useEditorStore.getState().addPage();
    expect(doc().pages).toHaveLength(2);
    expect(useEditorStore.getState().pageIndex).toBe(1);
  });

  it("duplicates a page with fresh ids throughout", () => {
    const d = createDocument();
    d.pages[0].layers[0].units.push(createTextUnit(10, 10));
    open(d);

    useEditorStore.getState().duplicatePage(0);
    const [original, copy] = doc().pages;

    expect(doc().pages).toHaveLength(2);
    expect(copy.id).not.toBe(original.id);
    expect(copy.layers[0].id).not.toBe(original.layers[0].id);
    expect(copy.layers[0].units[0].id).not.toBe(original.layers[0].units[0].id);
    // The copy's active layer must point at its own layer, not the original's.
    expect(copy.currentLayerId).toBe(copy.layers[0].id);
  });

  it("refuses to delete the last page", () => {
    open();
    useEditorStore.getState().deletePage(0);
    expect(doc().pages).toHaveLength(1);
  });

  it("reorders pages", () => {
    open();
    useEditorStore.getState().addPage();
    useEditorStore.getState().addPage();
    const ids = doc().pages.map((p) => p.id);

    useEditorStore.getState().reorderPage(0, 2);
    expect(doc().pages.map((p) => p.id)).toEqual([ids[1], ids[2], ids[0]]);
  });

  it("reorder is a single undo step", () => {
    open();
    useEditorStore.getState().addPage();
    const before = doc().pages.map((p) => p.id);

    useEditorStore.getState().reorderPage(0, 1);
    useEditorStore.getState().session!.undo();
    expect(doc().pages.map((p) => p.id)).toEqual(before);
  });

  it("changes paper style, colour and size", () => {
    open();
    useEditorStore.getState().setPaperStyle("grid");
    useEditorStore.getState().setPaperColor("#fffdf5");
    useEditorStore.getState().setPaperSize(1754, 1240);

    expect(page().paperStyle).toBe("grid");
    expect(page().paperColor).toBe("#fffdf5");
    expect(page().paperWidth).toBe(1754);
    expect(page().paperHeight).toBe(1240);
  });
});

describe("layers", () => {
  it("adds a layer and makes it the active one", () => {
    open();
    useEditorStore.getState().addLayer();

    expect(page().layers).toHaveLength(2);
    expect(page().currentLayerId).toBe(page().layers[1].id);
  });

  it("refuses to delete the last layer, so there is always somewhere to draw", () => {
    open();
    useEditorStore.getState().deleteLayer(page().layers[0].id);
    expect(page().layers).toHaveLength(1);
  });

  it("moves the active layer when the active one is deleted", () => {
    open();
    useEditorStore.getState().addLayer();
    const doomed = page().currentLayerId;

    useEditorStore.getState().deleteLayer(doomed);
    expect(page().layers).toHaveLength(1);
    expect(page().currentLayerId).not.toBe(doomed);
    // And it must point at a layer that actually exists.
    expect(page().layers.some((l) => l.id === page().currentLayerId)).toBe(true);
  });

  it("renames, hides and locks a layer", () => {
    open();
    const id = page().layers[0].id;

    useEditorStore.getState().renameLayer(id, "下書き");
    useEditorStore.getState().setLayerVisible(id, false);
    useEditorStore.getState().setLayerLocked(id, true);

    expect(page().layers[0].name).toBe("下書き");
    expect(page().layers[0].visible).toBe(false);
    expect(page().layers[0].locked).toBe(true);
  });

  it("reorders layers", () => {
    open();
    useEditorStore.getState().addLayer();
    const ids = page().layers.map((l) => l.id);

    useEditorStore.getState().reorderLayer(0, 1);
    expect(page().layers.map((l) => l.id)).toEqual([ids[1], ids[0]]);
  });

  it("every layer change is undoable", () => {
    open();
    useEditorStore.getState().addLayer();
    expect(page().layers).toHaveLength(2);

    useEditorStore.getState().session!.undo();
    expect(page().layers).toHaveLength(1);
  });
});

describe("tools", () => {
  it("keeps the selection when moving between select and lasso", () => {
    const d = createDocument();
    const unit = createTextUnit(0, 0);
    d.pages[0].layers[0].units.push(unit);
    open(d);

    useEditorStore.getState().setTool("select");
    useEditorStore.getState().setSelection([unit.id]);

    useEditorStore.getState().setTool("lasso");
    expect(useEditorStore.getState().selection).toEqual([unit.id]);

    // But a drawing tool clears it, so the overlay does not imply a drag target.
    useEditorStore.getState().setTool("pen");
    expect(useEditorStore.getState().selection).toEqual([]);
  });

  it("remembers colour and width per pen slot", () => {
    open();
    const s = useEditorStore.getState();

    s.setPenPreset("ballpoint");
    s.setPenColor("#d93025");
    useEditorStore.getState().setPenWidth(10);

    useEditorStore.getState().setPenPreset("highlighter");
    expect(useEditorStore.getState().currentPen().color).not.toBe("#d93025");

    useEditorStore.getState().setPenPreset("ballpoint");
    const pen = useEditorStore.getState().currentPen();
    expect(pen.color).toBe("#d93025");
    expect(pen.width).toBe(10);
  });
});

describe("document lifecycle", () => {
  it("tracks the dirty flag through edits and saves", () => {
    open();
    expect(useEditorStore.getState().saveState).toBe("saved");

    useEditorStore.getState().addPage();
    expect(useEditorStore.getState().saveState).toBe("dirty");

    useEditorStore.getState().markSaved();
    expect(useEditorStore.getState().saveState).toBe("saved");
  });

  it("clears everything on close", () => {
    open();
    useEditorStore.getState().closeDocument();

    const s = useEditorStore.getState();
    expect(s.doc).toBeNull();
    expect(s.session).toBeNull();
    expect(s.selection).toEqual([]);
    expect(s.canUndo).toBe(false);
  });

  it("clamps the page index to the document", () => {
    open();
    useEditorStore.getState().setPageIndex(99);
    expect(useEditorStore.getState().pageIndex).toBe(0);

    useEditorStore.getState().setPageIndex(-5);
    expect(useEditorStore.getState().pageIndex).toBe(0);
  });

  it("a duplicated page's ink is independent of the original", () => {
    const d = createDocument();
    const ink: DrawUnit = {
      id: "unit_ink",
      type: "$draw",
      x: 0,
      y: 0,
      width: 100,
      height: 100,
      rotation: 0,
      contentScale: 1,
      strokes: [
        {
          id: "s1",
          points: [{ x: 1, y: 2, p: 0.5, t: 0 }],
          pen: {
            color: "#000",
            width: 2,
            penType: "ballpoint",
            opacity: 1,
            pressureSensitivity: 0.5,
          },
          bounds: { x: 0, y: 0, width: 4, height: 4 },
        },
      ],
    };
    d.pages[0].layers[0].units.push(ink);
    open(d);

    useEditorStore.getState().duplicatePage(0);
    const copy = doc().pages[1].layers[0].units[0] as DrawUnit;
    expect(copy.strokes[0].id).not.toBe("s1");
  });
});
