/**
 * The note editor.
 *
 * Owns document loading, autosave, keyboard shortcuts and the asset cache, and
 * wires the canvas controller to the store. Everything that happens per pointer
 * event is inside the controller, not here.
 */

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { useNavigate, useParams } from "react-router";
import { open } from "@tauri-apps/plugin-dialog";

import type { CanvasController, ToolMode } from "../canvas/controller";
import { CanvasHost } from "../components/CanvasHost";
import { Inspector } from "../components/Inspector";
import { TextEditOverlay } from "../components/TextEditOverlay";
import { Toolbar } from "../components/Toolbar";
import * as api from "../ipc/api";
import { fromGeneric, toGeneric } from "../model/converter";
import { createFlipUnit, createImageUnit, createTextUnit } from "../model/factory";
import { newTicket } from "../model/ids";
import type { ModelId, Point } from "../model/types";
import { currentLayer } from "../model/types";
import { useAssetCache } from "../hooks/useAssetCache";
import { useEditorStore } from "../store/editorStore";

const AUTOSAVE_DELAY_MS = 1200;

export function EditorScreen() {
  const { noteId } = useParams<{ noteId: string }>();
  const navigate = useNavigate();
  const controllerRef = useRef<CanvasController | null>(null);

  const doc = useEditorStore((s) => s.doc);
  const session = useEditorStore((s) => s.session);
  const pageIndex = useEditorStore((s) => s.pageIndex);
  const saveState = useEditorStore((s) => s.saveState);
  const canUndo = useEditorStore((s) => s.canUndo);
  const canRedo = useEditorStore((s) => s.canRedo);
  const openDocument = useEditorStore((s) => s.openDocument);
  const closeDocument = useEditorStore((s) => s.closeDocument);
  const setPageIndex = useEditorStore((s) => s.setPageIndex);
  const addPage = useEditorStore((s) => s.addPage);
  const undo = useEditorStore((s) => s.undo);
  const redo = useEditorStore((s) => s.redo);
  const setSaveState = useEditorStore((s) => s.setSaveState);
  const markSaved = useEditorStore((s) => s.markSaved);

  const [loadError, setLoadError] = useState<string | null>(null);
  const [editingUnitId, setEditingUnitId] = useState<ModelId | null>(null);
  const assets = useAssetCache(noteId ?? null, doc);

  // -- load ---------------------------------------------------------------

  useEffect(() => {
    if (!noteId) return;
    let cancelled = false;

    (async () => {
      try {
        const tree = await api.noteLoad(noteId);
        if (cancelled) return;
        openDocument(fromGeneric(tree), noteId);
      } catch (err) {
        if (!cancelled) setLoadError(String(err));
      }
    })();

    return () => {
      cancelled = true;
      closeDocument();
      void api.noteClose(noteId);
    };
  }, [noteId, openDocument, closeDocument]);

  useEffect(() => {
    if (doc) controllerRef.current?.fitPage();
    // Fit once per document, not on every edit.
  }, [doc?.id]);

  // -- autosave -----------------------------------------------------------

  const save = useCallback(async () => {
    const state = useEditorStore.getState();
    if (!state.doc || !state.noteId) return;
    setSaveState("saving");
    try {
      await api.noteSave(
        toGeneric(state.doc),
        state.doc.meta.title,
        state.doc.meta.createdAt,
        state.doc.revision,
      );

      // Page 1 doubles as the library cover, so refresh it alongside the save.
      const thumbnail = controllerRef.current?.renderThumbnail();
      if (thumbnail && state.pageIndex === 0) {
        await api.noteSetThumbnail(
          state.noteId,
          state.doc.pages[0].id,
          state.doc.revision,
          thumbnail,
        );
      }
      markSaved();
    } catch (err) {
      console.error("save failed", err);
      setSaveState("error");
    }
  }, [markSaved, setSaveState]);

  useEffect(() => {
    if (saveState !== "dirty") return;
    const timer = setTimeout(() => void save(), AUTOSAVE_DELAY_MS);
    return () => clearTimeout(timer);
  }, [saveState, save, doc]);

  // -- keyboard -----------------------------------------------------------

  useEffect(() => {
    const onKeyDown = (e: KeyboardEvent) => {
      const target = e.target as HTMLElement | null;
      if (target && /^(INPUT|TEXTAREA)$/.test(target.tagName)) return;
      if (target?.isContentEditable) return;

      const mod = e.metaKey || e.ctrlKey;
      if (mod && e.key.toLowerCase() === "z") {
        e.preventDefault();
        // docs/15 §5: the original cancels an in-flight gesture around undo, so
        // a half-drawn stroke cannot commit onto an already-changed document.
        controllerRef.current?.cancelGesture();
        if (e.shiftKey) redo();
        else undo();
        return;
      }
      if (mod && e.key.toLowerCase() === "s") {
        e.preventDefault();
        void save();
        return;
      }
      if (mod && e.key === "0") {
        e.preventDefault();
        controllerRef.current?.fitPage();
        return;
      }

      const shortcut = e.key.toLowerCase();
      const toolByKey: Record<string, ToolMode> = {
        p: "pen",
        e: "eraser",
        v: "select",
        t: "text",
        n: "sticky",
        i: "image",
        h: "pan",
      };
      if (!mod && toolByKey[shortcut]) {
        useEditorStore.getState().setTool(toolByKey[shortcut]);
      }
    };

    window.addEventListener("keydown", onKeyDown);
    return () => window.removeEventListener("keydown", onKeyDown);
  }, [undo, redo, save]);

  // -- placement tools ----------------------------------------------------

  const handlePlace = useCallback(
    async (tool: ToolMode, world: Point) => {
      const state = useEditorStore.getState();
      const { session: s, doc: d, pageIndex: pi, noteId: nid } = state;
      if (!s || !d || !nid) return;
      const page = d.pages[pi];
      const layer = page && currentLayer(page);
      if (!page || !layer) return;

      if (tool === "text") {
        const unit = createTextUnit(world.x, world.y);
        s.transact("テキストを追加", () => {
          s.record({
            kind: "unit.add",
            pageId: page.id,
            layerId: layer.id,
            index: layer.units.length,
            unit,
          });
        });
        setEditingUnitId(unit.id);
        state.setTool("select");
        state.setSelection([unit.id]);
        return;
      }

      if (tool === "sticky") {
        const unit = createFlipUnit(world.x, world.y);
        s.transact("付箋を追加", () => {
          s.record({
            kind: "unit.add",
            pageId: page.id,
            layerId: layer.id,
            index: layer.units.length,
            unit,
          });
        });
        setEditingUnitId(unit.id);
        state.setTool("select");
        state.setSelection([unit.id]);
        return;
      }

      if (tool === "image") {
        const selected = await open({
          multiple: false,
          filters: [{ name: "画像", extensions: ["png", "jpg", "jpeg", "gif", "webp"] }],
        });
        if (typeof selected !== "string") return;

        const dataUrl = await api.fileReadDataUrl(selected);
        const size = await imageSize(dataUrl);
        const ticket = newTicket();
        await api.assetPut(nid, ticket, dataUrl);

        // Fit wide images to the page so an imported photo does not land
        // several times larger than the paper.
        const maxWidth = page.paperWidth * 0.6;
        const scale = size.width > maxWidth ? maxWidth / size.width : 1;
        const unit = createImageUnit(
          world.x,
          world.y,
          size.width * scale,
          size.height * scale,
          ticket,
        );

        s.transact("画像を追加", () => {
          s.record({
            kind: "unit.add",
            pageId: page.id,
            layerId: layer.id,
            index: layer.units.length,
            unit,
          });
        });
        state.setTool("select");
        state.setSelection([unit.id]);
      }
    },
    [],
  );

  const page = doc?.pages[pageIndex];
  const viewport = useMemo(
    () => controllerRef.current?.getViewport(),
    // Recomputed on every render on purpose: it feeds the text overlay's
    // position, which must track pan and zoom.
    // eslint-disable-next-line react-hooks/exhaustive-deps
    [doc, pageIndex, editingUnitId],
  );

  if (loadError) {
    return (
      <div className="app">
        <header className="topbar">
          <button type="button" onClick={() => navigate("/")}>
            ← ノート一覧
          </button>
        </header>
        <div className="loading">
          <div className="notice">ノートを開けませんでした: {loadError}</div>
        </div>
      </div>
    );
  }

  if (!doc) {
    return (
      <div className="app">
        <header className="topbar">
          <span className="topbar__title">読み込み中…</span>
        </header>
        <div className="loading">読み込み中…</div>
      </div>
    );
  }

  return (
    <div className="app">
      <header className="topbar">
        <button type="button" onClick={() => navigate("/")} title="ノート一覧に戻る">
          ← 一覧
        </button>
        <span className="topbar__title">{doc.meta.title}</span>
        <span className="save-chip" data-state={saveState}>
          {saveLabel(saveState)}
        </span>
        <div className="topbar__spacer" />
        <button
          type="button"
          onClick={() => {
            controllerRef.current?.cancelGesture();
            undo();
          }}
          disabled={!canUndo}
          title="元に戻す (Cmd+Z)"
        >
          ↺ 元に戻す
        </button>
        <button
          type="button"
          onClick={() => {
            controllerRef.current?.cancelGesture();
            redo();
          }}
          disabled={!canRedo}
          title="やり直す (Cmd+Shift+Z)"
        >
          ↻ やり直す
        </button>
      </header>

      <div className="editor">
        <Toolbar />
        <CanvasHost
          controllerRef={controllerRef}
          assets={assets}
          onPlace={handlePlace}
          onEditText={setEditingUnitId}
        />
        <Inspector />
      </div>

      {editingUnitId && page && session && viewport && (
        <TextEditOverlay
          unitId={editingUnitId}
          page={page}
          session={session}
          viewport={viewport}
          onClose={() => {
            setEditingUnitId(null);
            controllerRef.current?.invalidateAll();
          }}
        />
      )}

      <footer className="statusbar">
        <button
          type="button"
          onClick={() => setPageIndex(pageIndex - 1)}
          disabled={pageIndex === 0}
        >
          ‹
        </button>
        <span>
          {pageIndex + 1} / {doc.pages.length}
        </span>
        <button
          type="button"
          onClick={() => setPageIndex(pageIndex + 1)}
          disabled={pageIndex >= doc.pages.length - 1}
        >
          ›
        </button>
        <button type="button" onClick={addPage}>
          + ページ
        </button>

        <div className="statusbar__spacer" />

        <button type="button" onClick={() => controllerRef.current?.zoomBy(1 / 1.25)}>
          −
        </button>
        <button type="button" onClick={() => controllerRef.current?.fitPage()}>
          全体表示
        </button>
        <button type="button" onClick={() => controllerRef.current?.zoomBy(1.25)}>
          ＋
        </button>
      </footer>
    </div>
  );
}

function saveLabel(state: string): string {
  switch (state) {
    case "saving":
      return "保存中…";
    case "dirty":
      return "未保存";
    case "error":
      return "保存に失敗";
    default:
      return "保存済み";
  }
}

function imageSize(dataUrl: string): Promise<{ width: number; height: number }> {
  return new Promise((resolve) => {
    const img = new Image();
    img.onload = () => resolve({ width: img.naturalWidth, height: img.naturalHeight });
    img.onerror = () => resolve({ width: 320, height: 240 });
    img.src = dataUrl;
  });
}
