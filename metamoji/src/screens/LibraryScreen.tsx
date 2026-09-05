/**
 * The note library.
 *
 * Stands in for the original's `MainActivity` / Cabinet hub (docs/02 §1). The
 * cloud half of Cabinet — drives, team folders, sync status — belongs to phase
 * B and would be dead chrome here, so what is left is the part that works
 * entirely locally: folders, tags, search and the note grid.
 */

import { useCallback, useEffect, useMemo, useState } from "react";
import { useNavigate } from "react-router";
import { open } from "@tauri-apps/plugin-dialog";

import { ImportReportDialog } from "../components/ImportReportDialog";
import { useTranslation } from "../i18n/useTranslation";
import { Menu } from "../components/Menu";
import { SyncButton } from "../components/SyncButton";
import * as api from "../ipc/api";
import type { Folder, ImportReport, ListQuery, NoteSort, NoteSummary, Tag } from "../ipc/api";
import { toGeneric } from "../model/converter";
import { createDocument } from "../model/factory";
import { newId, newNoteId } from "../model/ids";
import { markSessionClosed, readInterruptedSession, type OpenSession } from "../store/sessionStore";

const TAG_COLORS = ["#32a5ff", "#d93025", "#188038", "#f29900", "#9334e6", "#e8710a"];

type View = { kind: "all" } | { kind: "folder"; id: string } | { kind: "tag"; id: string } | { kind: "trash" };

export function LibraryScreen() {
  const navigate = useNavigate();
  const { t } = useTranslation();

  const [notes, setNotes] = useState<NoteSummary[]>([]);
  const [folders, setFolders] = useState<Folder[]>([]);
  const [tags, setTags] = useState<Tag[]>([]);
  const [view, setView] = useState<View>({ kind: "all" });
  const [search, setSearch] = useState("");
  const [sort, setSort] = useState<NoteSort>("updated");
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [importing, setImporting] = useState(false);
  const [report, setReport] = useState<ImportReport | null>(null);
  const [renaming, setRenaming] = useState<string | null>(null);
  const [interrupted, setInterrupted] = useState<OpenSession | null>(() =>
    readInterruptedSession(),
  );

  const query = useMemo<ListQuery>(
    () => ({
      trashed: view.kind === "trash",
      folderId: view.kind === "folder" ? view.id : null,
      tagId: view.kind === "tag" ? view.id : null,
      text: search,
      sort,
    }),
    [view, search, sort],
  );

  const refresh = useCallback(async () => {
    try {
      const [nextNotes, nextFolders, nextTags] = await Promise.all([
        api.libraryList(query),
        api.folderList(),
        api.tagList(),
      ]);
      setNotes(nextNotes);
      setFolders(nextFolders);
      setTags(nextTags);
      setError(null);
    } catch (err) {
      setError(String(err));
    } finally {
      setLoading(false);
    }
  }, [query]);

  useEffect(() => {
    // Debounced so typing in the search box does not fire a query per keystroke.
    const timer = setTimeout(() => void refresh(), search ? 200 : 0);
    return () => clearTimeout(timer);
  }, [refresh, search]);

  // -- notes ---------------------------------------------------------------

  const createNote = async () => {
    try {
      const doc = createDocument(t("ノート {n}", { n: notes.length + 1 }));
      const summary = await api.libraryCreate(toGeneric(doc), doc.meta.title);
      if (view.kind === "folder") await api.librarySetFolder(summary.id, view.id);
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
      const title = selected.split("/").pop()?.replace(/\.[^.]+$/, "") ?? t("取り込んだノート");
      await api.libraryCreate(result.tree, title);
      await refresh();
      setReport(result.report);
    } catch (err) {
      setError(String(err));
    } finally {
      setImporting(false);
    }
  };

  const act = async (fn: () => Promise<unknown>) => {
    try {
      await fn();
      await refresh();
    } catch (err) {
      setError(String(err));
    }
  };

  const duplicate = (note: NoteSummary) =>
    act(() => api.libraryDuplicate(note.id, newNoteId(), t("{title} のコピー", { title: note.title })));

  const rename = (id: string, title: string) => {
    setRenaming(null);
    if (title.trim()) void act(() => api.libraryRename(id, title.trim()));
  };

  // -- folders and tags -----------------------------------------------------

  const addFolder = () => {
    const name = window.prompt(t("フォルダ名"));
    if (name?.trim()) void act(() => api.folderCreate(newId("folder"), name.trim(), null));
  };

  const addTag = () => {
    const name = window.prompt(t("タグ名"));
    if (!name?.trim()) return;
    const color = TAG_COLORS[tags.length % TAG_COLORS.length];
    void act(() => api.tagCreate(newId("tag"), name.trim(), color));
  };

  const viewTitle =
    view.kind === "trash"
      ? t("ゴミ箱")
      : view.kind === "folder"
        ? (folders.find((f) => f.id === view.id)?.name ?? t("フォルダ"))
        : view.kind === "tag"
          ? (tags.find((tag) => tag.id === view.id)?.name ?? t("タグ"))
          : t("すべてのノート");

  return (
    <div className="app">
      <header className="topbar">
        <span className="topbar__title">MetaMoJi</span>
        <div className="topbar__spacer" />
        <input
          className="search-box"
          type="search"
          placeholder={t("ノートを検索")}
          value={search}
          onChange={(e) => setSearch(e.target.value)}
        />
        <Menu
          label={t("並び順")}
          items={[
            { id: "updated", label: t("更新日時"), onSelect: () => setSort("updated") },
            { id: "created", label: t("作成日時"), onSelect: () => setSort("created") },
            { id: "title", label: t("名前"), onSelect: () => setSort("title") },
          ]}
        />
        <button type="button" onClick={importAtdoc} disabled={importing}>
          {importing ? t("取り込み中…") : t("取り込む")}
        </button>
        <SyncButton notes={notes} onSynced={() => void refresh()} />
        <button type="button" onClick={createNote}>
          {t("+ 新規ノート")}
        </button>
        <button type="button" onClick={() => navigate("/classroom")} title={t("教室")}>
          {t("教室")}
        </button>
        <button type="button" onClick={() => navigate("/settings")} title={t("設定")}>
          ⚙
        </button>
      </header>

      <div className="library-body">
        <nav className="library-sidebar" aria-label={t("ライブラリ")}>
          <button
            type="button"
            className="sidebar-item"
            aria-current={view.kind === "all"}
            onClick={() => setView({ kind: "all" })}
          >
            {t("すべてのノート")}
          </button>

          <div className="sidebar-heading">
            <span>{t("フォルダ")}</span>
            <button type="button" onClick={addFolder} title={t("フォルダを追加")}>
              +
            </button>
          </div>
          {folders.length === 0 && <p className="sidebar-empty">{t("まだありません")}</p>}
          {folders.map((folder) => (
            <div key={folder.id} className="sidebar-row">
              <button
                type="button"
                className="sidebar-item"
                aria-current={view.kind === "folder" && view.id === folder.id}
                onClick={() => setView({ kind: "folder", id: folder.id })}
                onDragOver={(e) => e.preventDefault()}
                onDrop={(e) => {
                  e.preventDefault();
                  const noteId = e.dataTransfer.getData("text/note-id");
                  if (noteId) void act(() => api.librarySetFolder(noteId, folder.id));
                }}
              >
                {folder.name}
                <span className="sidebar-count">{folder.noteCount}</span>
              </button>
              <button
                type="button"
                className="sidebar-action"
                title={t("フォルダを削除")}
                onClick={() => void act(() => api.folderDelete(folder.id))}
              >
                ✕
              </button>
            </div>
          ))}

          <div className="sidebar-heading">
            <span>{t("タグ")}</span>
            <button type="button" onClick={addTag} title={t("タグを追加")}>
              +
            </button>
          </div>
          {tags.length === 0 && <p className="sidebar-empty">{t("まだありません")}</p>}
          {tags.map((tag) => (
            <div key={tag.id} className="sidebar-row">
              <button
                type="button"
                className="sidebar-item"
                aria-current={view.kind === "tag" && view.id === tag.id}
                onClick={() => setView({ kind: "tag", id: tag.id })}
              >
                <span className="tag-dot" style={{ background: tag.color }} />
                {tag.name}
              </button>
              <button
                type="button"
                className="sidebar-action"
                title={t("タグを削除")}
                onClick={() => void act(() => api.tagDelete(tag.id))}
              >
                ✕
              </button>
            </div>
          ))}

          <div className="sidebar-heading">
            <span>{t("その他")}</span>
          </div>
          <button
            type="button"
            className="sidebar-item"
            aria-current={view.kind === "trash"}
            onClick={() => setView({ kind: "trash" })}
          >
            {t("ゴミ箱")}
          </button>
        </nav>

        <main className="library">
          <div className="library__header">
            <h1>{viewTitle}</h1>
            <span style={{ color: "var(--color-text-muted)", fontSize: 13 }}>
              {t("{count} 件", { count: notes.length })}
            </span>
          </div>

          {interrupted && (
            <div className="notice resume" style={{ marginBottom: "var(--space-4)" }}>
              <span>
                {t("前回は「{title}」を開いたままでした。", { title: interrupted.title })}
              </span>
              <span style={{ display: "flex", gap: "var(--space-2)" }}>
                <button
                  type="button"
                  className="btn btn--primary"
                  onClick={() => navigate(`/note/${interrupted.noteId}`)}
                >
                  {t("開く")}
                </button>
                <button
                  type="button"
                  className="btn"
                  onClick={() => {
                    markSessionClosed();
                    setInterrupted(null);
                  }}
                >
                  {t("閉じる")}
                </button>
              </span>
            </div>
          )}

          {error && (
            <div className="notice" style={{ marginBottom: "var(--space-4)" }}>
              {error}
            </div>
          )}

          {loading ? (
            <div className="library__empty">{t("読み込み中…")}</div>
          ) : notes.length === 0 ? (
            <div className="library__empty">
              {search ? (
                <p>{t("「{search}」に一致するノートはありません。", { search })}</p>
              ) : view.kind === "trash" ? (
                <p>{t("ゴミ箱は空です。")}</p>
              ) : (
                <>
                  <p>{t("まだノートがありません。")}</p>
                  <button type="button" className="btn btn--primary" onClick={createNote}>
                    {t("最初のノートを作成")}
                  </button>
                </>
              )}
            </div>
          ) : (
            <div className="library__grid">
              {notes.map((note) => (
                <NoteCard
                  key={note.id}
                  note={note}
                  tags={tags}
                  renaming={renaming === note.id}
                  inTrash={view.kind === "trash"}
                  onOpen={() => navigate(`/note/${note.id}`)}
                  onStartRename={() => setRenaming(note.id)}
                  onRename={(title) => rename(note.id, title)}
                  onDuplicate={() => void duplicate(note)}
                  onTrash={() => void act(() => api.librarySetTrashed(note.id, true))}
                  onRestore={() => void act(() => api.librarySetTrashed(note.id, false))}
                  onDelete={() => {
                    if (window.confirm(t("「{title}」を完全に削除しますか?", { title: note.title }))) {
                      void act(() => api.libraryDelete(note.id));
                    }
                  }}
                  onToggleTag={(tagId, on) =>
                    void act(() => api.tagSetOnDocument(note.id, tagId, on))
                  }
                  onRemoveFromFolder={() => void act(() => api.librarySetFolder(note.id, null))}
                />
              ))}
            </div>
          )}
        </main>
      </div>

      {report && <ImportReportDialog report={report} onClose={() => setReport(null)} />}
    </div>
  );
}

interface CardProps {
  note: NoteSummary;
  tags: Tag[];
  renaming: boolean;
  inTrash: boolean;
  onOpen: () => void;
  onStartRename: () => void;
  onRename: (title: string) => void;
  onDuplicate: () => void;
  onTrash: () => void;
  onRestore: () => void;
  onDelete: () => void;
  onToggleTag: (tagId: string, on: boolean) => void;
  onRemoveFromFolder: () => void;
}

function NoteCard({
  note,
  tags,
  renaming,
  inTrash,
  onOpen,
  onStartRename,
  onRename,
  onDuplicate,
  onTrash,
  onRestore,
  onDelete,
  onToggleTag,
  onRemoveFromFolder,
}: CardProps) {
  const { t } = useTranslation();
  const noteTagIds = new Set(note.tags.map((t) => t.id));

  return (
    <div
      className="note-card"
      draggable={!inTrash}
      onDragStart={(e) => e.dataTransfer.setData("text/note-id", note.id)}
    >
      <button
        type="button"
        onClick={onOpen}
        style={{ display: "block", width: "100%" }}
        disabled={renaming}
      >
        {note.thumbnail ? (
          <img className="note-card__thumb" src={note.thumbnail} alt="" draggable={false} />
        ) : (
          <div className="note-card__thumb" />
        )}
      </button>

      <div className="note-card__body">
        {renaming ? (
          <input
            className="note-card__rename"
            autoFocus
            defaultValue={note.title}
            onBlur={(e) => onRename(e.target.value)}
            onKeyDown={(e) => {
              if (e.key === "Enter") e.currentTarget.blur();
              if (e.key === "Escape") onRename(note.title);
            }}
          />
        ) : (
          <div className="note-card__title" title={note.title}>
            {note.title}
          </div>
        )}

        <div className="note-card__meta">
          {t("{count} ページ", { count: note.pageCount })} · {formatDate(note.updatedAt)}
        </div>

        {note.tags.length > 0 && (
          <div className="note-card__tags">
            {note.tags.map((tag) => (
              <span key={tag.id} className="tag-chip" style={{ background: tag.color }}>
                {tag.name}
              </span>
            ))}
          </div>
        )}
      </div>

      <div className="note-card__footer">
        <Menu
          label="⋯"
          title={t("操作")}
          align="left"
          items={
            inTrash
              ? [
                  { id: "restore", label: t("元に戻す操作"), onSelect: onRestore },
                  {
                    id: "delete",
                    label: t("完全に削除"),
                    danger: true,
                    separatorBefore: true,
                    onSelect: onDelete,
                  },
                ]
              : [
                  { id: "rename", label: t("名前を変更"), onSelect: onStartRename },
                  { id: "duplicate", label: t("複製"), onSelect: onDuplicate },
                  ...(note.folderId
                    ? [
                        {
                          id: "unfile",
                          label: t("フォルダから出す"),
                          onSelect: onRemoveFromFolder,
                        },
                      ]
                    : []),
                  ...tags.map((tag) => ({
                    id: `tag-${tag.id}`,
                    label: `${noteTagIds.has(tag.id) ? "✓ " : "　"}${tag.name}`,
                    separatorBefore: tag.id === tags[0]?.id,
                    onSelect: () => onToggleTag(tag.id, !noteTagIds.has(tag.id)),
                  })),
                  {
                    id: "trash",
                    label: t("ゴミ箱へ"),
                    danger: true,
                    separatorBefore: true,
                    onSelect: onTrash,
                  },
                ]
          }
        />
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
