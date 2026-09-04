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
import { PEN_COLORS, PEN_PRESETS, PEN_WIDTHS, type ToolId } from "../editor/tools";
import { createDocument, createPage } from "../model/factory";
import type { ModelId, NoteDocument, PenAttributes, Unit } from "../model/types";
import { currentLayer, findPage } from "../model/types";

export type SaveState = "saved" | "dirty" | "saving" | "error";

interface EditorState {
  session: EditSession | null;
  doc: NoteDocument | null;
  noteId: string | null;
  pageIndex: number;

  activeTool: ToolId;
  penPresetId: string;
  penColor: string;
  penWidth: number;
  eraserSize: number;

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
  currentPen: () => PenAttributes;

  // -- pages --------------------------------------------------------------
  setPageIndex: (index: number) => void;
  addPage: () => void;
  deletePage: (index: number) => void;

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
  penColor: PEN_COLORS[0],
  penWidth: PEN_WIDTHS[1],
  eraserSize: 16,

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
      // Leaving the selection tool drops the selection; keeping handles visible
      // while drawing is confusing and makes the overlay lie about what a drag
      // will do.
      selection: activeTool === "select" ? s.selection : [],
    })),

  setPenPreset: (penPresetId) => {
    const preset = PEN_PRESETS.find((p) => p.id === penPresetId);
    set({ penPresetId, ...(preset ? { penWidth: preset.width } : {}) });
  },
  setPenColor: (penColor) => set({ penColor }),
  setPenWidth: (penWidth) => set({ penWidth }),
  setEraserSize: (eraserSize) => set({ eraserSize }),

  currentPen: () => {
    const { penPresetId, penColor, penWidth } = get();
    const preset = PEN_PRESETS.find((p) => p.id === penPresetId) ?? PEN_PRESETS[0];
    return {
      penType: preset.penType,
      color: penColor,
      width: penWidth,
      opacity: preset.opacity,
      pressureSensitivity: preset.pressureSensitivity,
    };
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
