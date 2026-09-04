/**
 * The note library.
 *
 * Stands in for the original's `MainActivity` / Cabinet hub (docs/02 §1), minus
 * everything cloud-shaped: no drives, no team folders, no sync status. Those
 * belong to phase B and would be dead chrome here.
 */

import { useCallback, useEffect, useState } from "react";
import { useNavigate } from "react-router";
import { open } from "@tauri-apps/plugin-dialog";

import * as api from "../ipc/api";
import type { ImportReport, NoteSummary } from "../ipc/api";
import { toGeneric } from "../model/converter";
import { createDocument } from "../model/factory";
import { newNoteId } from "../model/ids";
import { ImportReportDialog } from "../components/ImportReportDialog";

export function LibraryScreen() {
  const navigate = useNavigate();
  const [notes, setNotes] = useState<NoteSummary[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [report, setReport] = useState<{ report: ImportReport; noteId: string } | null>(null);
  const [importing, setImporting] = useState(false);

  const refresh = useCallback(async () => {
    try {
      setNotes(await api.libraryList());
      setError(null);
    } catch (err) {
      setError(String(err));
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    void refresh();
  }, [refresh]);

  const createNote = async () => {
    try {
      const doc = createDocument(`ノート ${notes.length + 1}`);
      const summary = await api.libraryCreate(toGeneric(doc), doc.meta.title);
      navigate(`/note/${summary.id}`);
    } catch (err) {
      setError(String(err));
    }
  };

  const importAtdoc = async () => {
    const selected = await open({
      multiple: false,
      filters: [
        { name: "MetaMoJi ノート", extensions: ["atdoc", "atdo", "dat", "product", "state"] },
        { name: "すべてのファイル", extensions: ["*"] },
      ],
    });
    if (typeof selected !== "string") return;

    setImporting(true);
    setError(null);
    try {
      const noteId = newNoteId();
      const result = await api.atdocImport(selected, noteId);
      const title = selected.split("/").pop()?.replace(/\.[^.]+$/, "") ?? "取り込んだノート";
      await api.libraryCreate(result.tree, title);
      await refresh();
      setReport({ report: result.report, noteId });
    } catch (err) {
      setError(String(err));
    } finally {
      setImporting(false);
    }
  };

  const trash = async (id: string) => {
    await api.librarySetTrashed(id, true);
    await refresh();
  };

  return (
    <div className="app">
      <header className="topbar">
        <span className="topbar__title">MetaMoJi</span>
        <div className="topbar__spacer" />
        <button type="button" onClick={importAtdoc} disabled={importing}>
          {importing ? "取り込み中…" : "ノートを取り込む"}
        </button>
        <button type="button" onClick={createNote}>
          + 新規ノート
        </button>
      </header>

      <main className="library">
        <div className="library__header">
          <h1>ノート</h1>
          <span style={{ color: "var(--color-text-muted)", fontSize: 13 }}>
            {notes.length} 件
          </span>
        </div>

        {error && (
          <div className="notice" style={{ marginBottom: "var(--space-4)" }}>
            {error}
          </div>
        )}

        {loading ? (
          <div className="library__empty">読み込み中…</div>
        ) : notes.length === 0 ? (
          <div className="library__empty">
            <p>まだノートがありません。</p>
            <button type="button" className="btn btn--primary" onClick={createNote}>
              最初のノートを作成
            </button>
          </div>
        ) : (
          <div className="library__grid">
            {notes.map((note) => (
              <NoteCard
                key={note.id}
                note={note}
                onOpen={() => navigate(`/note/${note.id}`)}
                onTrash={() => void trash(note.id)}
              />
            ))}
          </div>
        )}
      </main>

      {report && (
        <ImportReportDialog
          report={report.report}
          onClose={() => setReport(null)}
        />
      )}
    </div>
  );
}

function NoteCard({
  note,
  onOpen,
  onTrash,
}: {
  note: NoteSummary;
  onOpen: () => void;
  onTrash: () => void;
}) {
  return (
    <div className="note-card">
      <button type="button" onClick={onOpen} style={{ display: "block", width: "100%" }}>
        {note.thumbnail ? (
          <img className="note-card__thumb" src={note.thumbnail} alt="" />
        ) : (
          <div className="note-card__thumb" />
        )}
        <div className="note-card__body">
          <div className="note-card__title">{note.title}</div>
          <div className="note-card__meta">
            {note.pageCount} ページ · {formatDate(note.updatedAt)}
          </div>
        </div>
      </button>
      <div style={{ padding: "0 var(--space-3) var(--space-3)" }}>
        <button
          type="button"
          onClick={onTrash}
          style={{ fontSize: 12, color: "var(--color-text-muted)" }}
        >
          ゴミ箱へ
        </button>
      </div>
    </div>
  );
}

function formatDate(iso: string): string {
  const date = new Date(iso);
  if (Number.isNaN(date.getTime())) return "";
  return new Intl.DateTimeFormat("ja-JP", {
    year: "numeric",
    month: "short",
    day: "numeric",
    hour: "2-digit",
    minute: "2-digit",
  }).format(date);
}
