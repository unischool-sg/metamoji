/**
 * Editor state.
 *
 * The rule this store exists to enforce: nothing that changes at pointer
 * frequency lives here. Ink samples never touch React — the canvas controller
 * draws the in-progress stroke itself and only commits to the document once,
 * on pointer-up. What the store holds is the coarse state the chrome renders
 * from: which tool, which page, what is selected, whether undo is available.
 */

import { create } from "zustand";

import { EditSession } from "../editor/session";
import {
  PEN_PRESETS,
  defaultPenSettings,
  penFromPreset,
  type PenSlotSettings,
  type ToolId,
} from "../editor/tools";
import { cloneUnit } from "./../editor/operations";
import { createDocument, createLayer, createPage } from "../model/factory";
import { newLayerId, newPageId } from "../model/ids";
import type {
  FormKind,
  ModelId,
  NoteDocument,
  Page,
  PaperStyle,
  PenAttributes,
  ShapeKind,
  Unit,
} from "../model/types";
import type { LassoMode } from "../render/polygon";
import { currentLayer, findPage } from "../model/types";

export type SaveState = "saved" | "dirty" | "saving" | "error";

interface EditorState {
  session: EditSession | null;
  doc: NoteDocument | null;
  noteId: string | null;
  pageIndex: number;

  activeTool: ToolId;
  penPresetId: string;
  /** Colour and width per pen slot, so switching pens keeps each one's look. */
  penSettings: Record<string, PenSlotSettings>;
  eraserSize: number;
  lassoMode: LassoMode;
  shapeKind: ShapeKind;
  shapeStrokeColor: string;
  shapeFillColor: string;
  formKind: FormKind;

  selection: ModelId[];
  canUndo: boolean;
  canRedo: boolean;
  saveState: SaveState;
  /** Set when a loaded note came from an import and carried caveats. */
  importWarnings: string[];

  // -- lifecycle ----------------------------------------------------------
  openDocument: (doc: NoteDocument, noteId: string) => void;
  closeDocument: () => void;
  setImportWarnings: (warnings: string[]) => void;

  // -- tools --------------------------------------------------------------
  setTool: (tool: ToolId) => void;
  setPenPreset: (id: string) => void;
  setPenColor: (color: string) => void;
  setPenWidth: (width: number) => void;
  setEraserSize: (size: number) => void;
  setLassoMode: (mode: LassoMode) => void;
  setShapeKind: (kind: ShapeKind) => void;
  setShapeStrokeColor: (color: string) => void;
  setShapeFillColor: (color: string) => void;
  setFormKind: (kind: FormKind) => void;
  currentPen: () => PenAttributes;

  // -- pages --------------------------------------------------------------
  setPageIndex: (index: number) => void;
  addPage: () => void;
  duplicatePage: (index: number) => void;
  deletePage: (index: number) => void;
  reorderPage: (from: number, to: number) => void;
  setPaperStyle: (style: PaperStyle) => void;
  setPaperColor: (color: string) => void;
  setPaperSize: (width: number, height: number) => void;

  // -- layers -------------------------------------------------------------
  addLayer: () => void;
  deleteLayer: (layerId: ModelId) => void;
  renameLayer: (layerId: ModelId, name: string) => void;
  setLayerVisible: (layerId: ModelId, visible: boolean) => void;
  setLayerLocked: (layerId: ModelId, locked: boolean) => void;
  setActiveLayer: (layerId: ModelId) => void;
  reorderLayer: (from: number, to: number) => void;

  // -- selection ----------------------------------------------------------
  setSelection: (ids: ModelId[]) => void;
  clearSelection: () => void;

  // -- history ------------------------------------------------------------
  undo: () => void;
  redo: () => void;
  refreshHistory: () => void;
  setSaveState: (state: SaveState) => void;
  markSaved: () => void;
}

export const useEditorStore = create<EditorState>((set, get) => ({
  session: null,
  doc: null,
  noteId: null,
  pageIndex: 0,

  activeTool: "pen",
  penPresetId: PEN_PRESETS[0].id,
  penSettings: defaultPenSettings(),
  eraserSize: 16,
  lassoMode: "overlap",
  shapeKind: "rect",
  shapeStrokeColor: "#1f1f1f",
  shapeFillColor: "",
  formKind: "grid",

  selection: [],
  canUndo: false,
  canRedo: false,
  saveState: "saved",
  importWarnings: [],

  openDocument: (doc, noteId) => {
    const session = new EditSession(doc);
    // The store mirrors the session rather than owning the document, so every
    // mutation path goes through the transaction bracket.
    session.subscribe((event) => {
      set({
        doc: event.type === "ModelChanged" ? event.doc : event.doc,
        canUndo: session.canUndo,
        canRedo: session.canRedo,
        saveState: session.isDirty ? "dirty" : "saved",
      });
    });
    set({
      session,
      doc,
      noteId,
      pageIndex: 0,
      selection: [],
      canUndo: false,
      canRedo: false,
      saveState: "saved",
      importWarnings: [],
    });
  },

  closeDocument: () =>
    set({
      session: null,
      doc: null,
      noteId: null,
      pageIndex: 0,
      selection: [],
      canUndo: false,
      canRedo: false,
      saveState: "saved",
      importWarnings: [],
    }),

  setImportWarnings: (importWarnings) => set({ importWarnings }),

  setTool: (activeTool) =>
    set((s) => ({
      activeTool,
      // Leaving the selection tools drops the selection: keeping handles
      // visible while drawing is confusing and makes the overlay lie about
      // what a drag will do. Select and lasso share one selection, so moving
      // between them keeps it.
      selection:
        activeTool === "select" || activeTool === "lasso" ? s.selection : [],
    })),

  setPenPreset: (penPresetId) => set({ penPresetId }),

  setPenColor: (color) =>
    set((s) => ({
      penSettings: {
        ...s.penSettings,
        [s.penPresetId]: { ...s.penSettings[s.penPresetId], color },
      },
    })),

  setPenWidth: (width) =>
    set((s) => ({
      penSettings: {
        ...s.penSettings,
        [s.penPresetId]: { ...s.penSettings[s.penPresetId], width },
      },
    })),

  setEraserSize: (eraserSize) => set({ eraserSize }),
  setLassoMode: (lassoMode) => set({ lassoMode }),
  setShapeKind: (shapeKind) => set({ shapeKind }),
  setShapeStrokeColor: (shapeStrokeColor) => set({ shapeStrokeColor }),
  setShapeFillColor: (shapeFillColor) => set({ shapeFillColor }),
  setFormKind: (formKind) => set({ formKind }),

  currentPen: () => {
    const { penPresetId, penSettings } = get();
    const preset = PEN_PRESETS.find((p) => p.id === penPresetId) ?? PEN_PRESETS[0];
    const settings = penSettings[penPresetId] ?? { color: preset.color, width: preset.width };
    return penFromPreset(preset, settings);
  },

  setPageIndex: (index) => {
    const doc = get().doc;
    if (!doc) return;
    set({ pageIndex: Math.max(0, Math.min(index, doc.pages.length - 1)), selection: [] });
  },

  addPage: () => {
    const { session, doc, pageIndex } = get();
    if (!session || !doc) return;
    const page = createPage(doc.pages[pageIndex]?.paperStyle ?? "blank");
    session.transact("ページを追加", () => {
      session.record({ kind: "page.add", index: pageIndex + 1, page });
    });
    set({ pageIndex: pageIndex + 1, selection: [] });
  },

  duplicatePage: (index) => {
    const { session, doc } = get();
    if (!session || !doc) return;
    const source = doc.pages[index];
    if (!source) return;

    // Everything gets a fresh id: two pages sharing a layer or unit id would
    // make every id-addressed delta ambiguous.
    const copy: Page = {
      ...source,
      id: newPageId(),
      layers: source.layers.map((layer) => ({
        ...layer,
        id: newLayerId(),
        units: layer.units.map((u) => cloneUnit(u)),
      })),
      currentLayerId: "",
    };
    copy.currentLayerId = copy.layers[0]?.id ?? "";

    session.transact("ページを複製", () => {
      session.record({ kind: "page.add", index: index + 1, page: copy });
    });
    set({ pageIndex: index + 1, selection: [] });
  },

  reorderPage: (from, to) => {
    const { session, doc } = get();
    if (!session || !doc) return;
    const page = doc.pages[from];
    if (!page || from === to) return;

    session.transact("ページを並べ替え", () => {
      session.record({ kind: "page.remove", index: from, page });
      session.record({ kind: "page.add", index: to, page });
    });
    set({ pageIndex: to, selection: [] });
  },

  setPaperStyle: (paperStyle) => {
    const { session, doc, pageIndex } = get();
    const page = doc?.pages[pageIndex];
    if (!session || !page) return;
    session.transact("用紙を変更", () => {
      session.record({
        kind: "page.update",
        pageId: page.id,
        before: { paperStyle: page.paperStyle },
        after: { paperStyle },
      });
    });
  },

  setPaperColor: (paperColor) => {
    const { session, doc, pageIndex } = get();
    const page = doc?.pages[pageIndex];
    if (!session || !page) return;
    session.transact("用紙の色を変更", () => {
      session.record({
        kind: "page.update",
        pageId: page.id,
        before: { paperColor: page.paperColor },
        after: { paperColor },
      });
    });
  },

  setPaperSize: (paperWidth, paperHeight) => {
    const { session, doc, pageIndex } = get();
    const page = doc?.pages[pageIndex];
    if (!session || !page) return;
    session.transact("用紙サイズを変更", () => {
      session.record({
        kind: "page.update",
        pageId: page.id,
        before: { paperWidth: page.paperWidth, paperHeight: page.paperHeight },
        after: { paperWidth, paperHeight },
      });
    });
  },

  // -- layers ---------------------------------------------------------------

  addLayer: () => {
    const { session, doc, pageIndex } = get();
    const page = doc?.pages[pageIndex];
    if (!session || !page) return;
    const layer = createLayer(`レイヤー ${page.layers.length + 1}`);
    session.transact("レイヤーを追加", () => {
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
  },

  deleteLayer: (layerId) => {
    const { session, doc, pageIndex } = get();
    const page = doc?.pages[pageIndex];
    if (!session || !page) return;
    // A page always keeps one layer; without it there is nowhere to draw.
    if (page.layers.length <= 1) return;

    const index = page.layers.findIndex((l) => l.id === layerId);
    if (index < 0) return;
    const layer = page.layers[index];
    const fallback = page.layers[index === 0 ? 1 : index - 1];

    session.transact("レイヤーを削除", () => {
      session.record({ kind: "layer.remove", pageId: page.id, index, layer });
      if (page.currentLayerId === layerId) {
        session.record({
          kind: "page.update",
          pageId: page.id,
          before: { currentLayerId: page.currentLayerId },
          after: { currentLayerId: fallback.id },
        });
      }
    });
    set({ selection: [] });
  },

  renameLayer: (layerId, name) => {
    const { session, doc, pageIndex } = get();
    const page = doc?.pages[pageIndex];
    const layer = page?.layers.find((l) => l.id === layerId);
    if (!session || !page || !layer) return;
    session.transact("レイヤー名を変更", () => {
      session.record({
        kind: "layer.update",
        pageId: page.id,
        layerId,
        before: { name: layer.name },
        after: { name },
      });
    });
  },

  setLayerVisible: (layerId, visible) => {
    const { session, doc, pageIndex } = get();
    const page = doc?.pages[pageIndex];
    const layer = page?.layers.find((l) => l.id === layerId);
    if (!session || !page || !layer) return;
    session.transact("レイヤーの表示を切り替え", () => {
      session.record({
        kind: "layer.update",
        pageId: page.id,
        layerId,
        before: { visible: layer.visible },
        after: { visible },
      });
    });
  },

  setLayerLocked: (layerId, locked) => {
    const { session, doc, pageIndex } = get();
    const page = doc?.pages[pageIndex];
    const layer = page?.layers.find((l) => l.id === layerId);
    if (!session || !page || !layer) return;
    session.transact("レイヤーのロックを切り替え", () => {
      session.record({
        kind: "layer.update",
        pageId: page.id,
        layerId,
        before: { locked: layer.locked },
        after: { locked },
      });
    });
    set({ selection: [] });
  },

  setActiveLayer: (layerId) => {
    const { session, doc, pageIndex } = get();
    const page = doc?.pages[pageIndex];
    if (!session || !page) return;
    session.transact("編集レイヤーを変更", () => {
      session.record({
        kind: "page.update",
        pageId: page.id,
        before: { currentLayerId: page.currentLayerId },
        after: { currentLayerId: layerId },
      });
    });
    set({ selection: [] });
  },

  reorderLayer: (from, to) => {
    const { session, doc, pageIndex } = get();
    const page = doc?.pages[pageIndex];
    if (!session || !page) return;
    const layer = page.layers[from];
    if (!layer || from === to) return;

    session.transact("レイヤーを並べ替え", () => {
      session.record({ kind: "layer.remove", pageId: page.id, index: from, layer });
      session.record({ kind: "layer.add", pageId: page.id, index: to, layer });
    });
  },

  deletePage: (index) => {
    const { session, doc } = get();
    if (!session || !doc) return;
    if (doc.pages.length <= 1) return; // a note always has at least one page
    const page = doc.pages[index];
    if (!page) return;
    session.transact("ページを削除", () => {
      session.record({ kind: "page.remove", index, page });
    });
    set((s) => ({
      pageIndex: Math.max(0, Math.min(s.pageIndex, (s.doc?.pages.length ?? 1) - 1)),
      selection: [],
    }));
  },

  setSelection: (selection) => set({ selection }),
  clearSelection: () => set({ selection: [] }),

  undo: () => {
    const session = get().session;
    if (!session) return;
    session.undo();
    set({ selection: [] });
  },

  redo: () => {
    const session = get().session;
    if (!session) return;
    session.redo();
    set({ selection: [] });
  },

  refreshHistory: () => {
    const session = get().session;
    if (!session) return;
    set({ canUndo: session.canUndo, canRedo: session.canRedo });
  },

  setSaveState: (saveState) => set({ saveState }),

  markSaved: () => {
    get().session?.markSaved();
    set({ saveState: "saved" });
  },
}));

// ---------------------------------------------------------------------------
// Derived helpers
// ---------------------------------------------------------------------------

export function useCurrentPage() {
  return useEditorStore((s) => (s.doc ? s.doc.pages[s.pageIndex] : undefined));
}

/** The layer new units and strokes go into. */
export function activeLayerId(doc: NoteDocument, pageIndex: number): ModelId | null {
  const page = doc.pages[pageIndex];
  if (!page) return null;
  return currentLayer(page)?.id ?? null;
}

export function selectedUnits(doc: NoteDocument, pageIndex: number, selection: ModelId[]): Unit[] {
  const page = doc.pages[pageIndex];
  if (!page) return [];
  const wanted = new Set(selection);
  const out: Unit[] = [];
  for (const layer of page.layers) {
    for (const unit of layer.units) {
      if (wanted.has(unit.id)) out.push(unit);
    }
  }
  return out;
}

export function pageById(doc: NoteDocument, pageId: ModelId) {
  return findPage(doc, pageId);
}

export { createDocument };
