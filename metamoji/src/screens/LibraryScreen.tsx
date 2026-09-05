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

import { Icon } from "../components/Icon";
import { ImportReportDialog } from "../components/ImportReportDialog";
import { useTranslation } from "../i18n/useTranslation";
import { Menu } from "../components/Menu";
import { AccountButton } from "../components/AccountButton";
import * as api from "../ipc/api";
import type {
  ClassBoxListing,
  Folder,
  ImportReport,
  ListQuery,
  NoteSort,
  NoteSummary,
  Tag,
} from "../ipc/api";
import { toGeneric } from "../model/converter";
import { createDocument } from "../model/factory";
import { newId, newNoteId } from "../model/ids";
import { markSessionClosed, readInterruptedSession, type OpenSession } from "../store/sessionStore";
import { useAuthStore } from "../store/authStore";
import { useClassroomStore } from "../store/classroomStore";

const TAG_COLORS = ["#32a5ff", "#d93025", "#188038", "#f29900", "#9334e6", "#e8710a"];

type View =
  | { kind: "all" }
  | { kind: "folder"; id: string }
  | { kind: "tag"; id: string }
  | { kind: "trash" }
  /** A class box: its notes live on the server, not in the local catalog. */
  | { kind: "classbox"; id: string; name: string };

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

  // Class boxes sit in the sidebar with folders and tags because that is what
  // they are to the user: another place their notes live. That they come from
  // a different server over a different protocol is not their problem.
  const session = useAuthStore((s) => s.session);
  const myBoxes = useClassroomStore((s) => s.myBoxes);
  const boxListing = useClassroomStore((s) => s.listing);
  const openingBox = useClassroomStore((s) => s.openingBox);
  const listingError = useClassroomStore((s) => s.listingError);
  const loadingBoxes = useClassroomStore((s) => s.loadingBoxes);
  const boxesError = useClassroomStore((s) => s.boxesError);

  useEffect(() => {
    if (session) void useClassroomStore.getState().loadMyBoxes();
  }, [session]);

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

  const openClassNote = async (documentId: string, title: string | null) => {
    if (view.kind !== "classbox") return;
    setError(null);
    try {
      const noteId = newNoteId();
      const result = await api.classboxOpenNote(view.id, documentId, noteId);
      const summary = await api.libraryCreate(
        result.tree,
        title ?? t("クラスボックスのノート"),
      );
      navigate(`/note/${summary.id}`);
    } catch (err) {
      setError(String(err));
    }
  };

  const viewTitle =
    view.kind === "trash"
      ? t("ゴミ箱")
      : view.kind === "classbox"
        ? view.name
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
        <div className="search-field">
          <Icon name="search" size={20} />
          <input
            className="search-box"
            type="search"
            placeholder={t("ノートを検索")}
            value={search}
            onChange={(e) => setSearch(e.target.value)}
          />
        </div>
        <Menu
          label={t("並び順")}
          icon="sort"
          items={[
            {
              id: "updated",
              label: t("更新日時"),
              checked: sort === "updated",
              onSelect: () => setSort("updated"),
            },
            {
              id: "created",
              label: t("作成日時"),
              checked: sort === "created",
              onSelect: () => setSort("created"),
            },
            {
              id: "title",
              label: t("名前"),
              checked: sort === "title",
              onSelect: () => setSort("title"),
            },
          ]}
        />
        <button
          type="button"
          className="btn btn--text"
          onClick={importAtdoc}
          disabled={importing}
        >
          <Icon name="file_open" size={18} />
          {importing ? t("取り込み中…") : t("取り込む")}
        </button>
        <AccountButton />
        <button
          type="button"
          className="icon-btn"
          onClick={() => navigate("/classroom")}
          title={t("教室")}
        >
          <Icon name="school" />
          <span className="sr-only">{t("教室")}</span>
        </button>
        <button
          type="button"
          className="icon-btn"
          onClick={() => navigate("/settings")}
          title={t("設定")}
        >
          <Icon name="settings" />
          <span className="sr-only">{t("設定")}</span>
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
            <Icon name="note_stack" size={20} />
            <span className="sidebar-item__label">{t("すべてのノート")}</span>
          </button>

          <div className="sidebar-heading">
            <span>{t("フォルダ")}</span>
            <button
              type="button"
              className="icon-btn icon-btn--sm"
              onClick={addFolder}
              title={t("フォルダを追加")}
            >
              <Icon name="create_new_folder" size={20} />
              <span className="sr-only">{t("フォルダを追加")}</span>
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
                <Icon name="folder" size={20} />
                <span className="sidebar-item__label">{folder.name}</span>
                <span className="sidebar-count">{folder.noteCount}</span>
              </button>
              <button
                type="button"
                className="icon-btn icon-btn--sm sidebar-action"
                title={t("フォルダを削除")}
                onClick={() => void act(() => api.folderDelete(folder.id))}
              >
                <Icon name="delete" size={20} />
                <span className="sr-only">{t("フォルダを削除")}</span>
              </button>
            </div>
          ))}

          {session && (
            <>
              <div className="sidebar-heading">
                <span>{t("クラス")}</span>
                <button
                  type="button"
                  className="icon-btn icon-btn--sm"
                  onClick={() => navigate("/classroom")}
                  title={t("教室")}
                >
                  <Icon name="school" size={20} />
                  <span className="sr-only">{t("教室")}</span>
                </button>
              </div>
              {loadingBoxes ? (
                <p className="sidebar-empty">{t("読み込み中…")}</p>
              ) : boxesError ? (
                <>
                  {/*
                   * The message goes on screen, not only in a tooltip: it is
                   * the server's own wording and the only thing that says what
                   * went wrong.
                   */}
                  <p className="sidebar-empty" title={boxesError}>
                    {boxesError}
                  </p>
                  <button
                    type="button"
                    className="sidebar-item"
                    onClick={() => void useClassroomStore.getState().loadMyBoxes()}
                  >
                    <Icon name="refresh" size={20} />
                    <span className="sidebar-item__label">{t("再読み込み")}</span>
                  </button>
                </>
              ) : myBoxes === null || myBoxes.length === 0 ? (
                <p className="sidebar-empty">{t("まだありません")}</p>
              ) : (
                myBoxes.map((box) => (
                  <div key={box.driveId} className="sidebar-row">
                    <button
                      type="button"
                      className="sidebar-item"
                      aria-current={view.kind === "classbox" && view.id === box.driveId}
                      onClick={() => {
                        const name = box.name ?? box.driveId;
                        setView({ kind: "classbox", id: box.driveId, name });
                        void useClassroomStore.getState().selectBox(box);
                      }}
                    >
                      <Icon name="school" size={20} />
                      <span className="sidebar-item__label">
                        {box.name ?? box.driveId}
                      </span>
                    </button>
                  </div>
                ))
              )}
            </>
          )}

          <div className="sidebar-heading">
            <span>{t("タグ")}</span>
            <button
              type="button"
              className="icon-btn icon-btn--sm"
              onClick={addTag}
              title={t("タグを追加")}
            >
              <Icon name="new_label" size={20} />
              <span className="sr-only">{t("タグを追加")}</span>
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
                <span className="sidebar-item__label">{tag.name}</span>
              </button>
              <button
                type="button"
                className="icon-btn icon-btn--sm sidebar-action"
                title={t("タグを削除")}
                onClick={() => void act(() => api.tagDelete(tag.id))}
              >
                <Icon name="delete" size={20} />
                <span className="sr-only">{t("タグを削除")}</span>
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
            <Icon name="delete" size={20} />
            <span className="sidebar-item__label">{t("ゴミ箱")}</span>
          </button>
        </nav>

        <main className="library">
          <div className="library__header">
            <h1>{viewTitle}</h1>
            <span className="library__count">
              {t("{count} 件", {
                count:
                  view.kind === "classbox"
                    ? (boxListing?.documents.length ?? 0)
                    : notes.length,
              })}
            </span>
          </div>

          {interrupted && (
            <div className="notice resume" style={{ marginBottom: "var(--space-4)" }}>
              <Icon name="info" size={20} />
              <span style={{ flex: 1 }}>
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
                  className="btn btn--text"
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
            <div className="notice notice--error" style={{ marginBottom: "var(--space-4)" }}>
              <Icon name="error" size={20} />
              <span>{error}</span>
            </div>
          )}

          {view.kind === "classbox" ? (
            <ClassBoxGrid
              listing={boxListing}
              loading={openingBox}
              error={listingError}
              onRetry={() => void useClassroomStore.getState().openBox()}
              onOpen={(id, title) => void openClassNote(id, title)}
            />
          ) : loading ? (
            <div className="library__empty">{t("読み込み中…")}</div>
          ) : notes.length === 0 ? (
            <div className="library__empty">
              {search ? (
                <>
                  <Icon name="search" size={48} />
                  <p>{t("「{search}」に一致するノートはありません。", { search })}</p>
                </>
              ) : view.kind === "trash" ? (
                <>
                  <Icon name="delete" size={48} />
                  <p>{t("ゴミ箱は空です。")}</p>
                </>
              ) : (
                <>
                  <Icon name="note_stack" size={48} />
                  <p>{t("まだノートがありません。")}</p>
                  <button type="button" className="btn btn--primary" onClick={createNote}>
                    <Icon name="add" size={18} />
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

      {/* Material's FAB: the library has exactly one primary action. */}
      <button type="button" className="fab" onClick={createNote} title={t("新規ノート")}>
        <Icon name="add" />
        {t("新規ノート")}
      </button>

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
        className="note-card__open"
        onClick={onOpen}
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
              <span key={tag.id} className="chip">
                <span className="tag-dot" style={{ background: tag.color }} />
                {tag.name}
              </span>
            ))}
          </div>
        )}
      </div>

      <div className="note-card__footer">
        <Menu
          icon="more_vert"
          title={t("操作")}
          items={
            inTrash
              ? [
                  {
                    id: "restore",
                    label: t("元に戻す操作"),
                    icon: "restore_from_trash" as const,
                    onSelect: onRestore,
                  },
                  {
                    id: "delete",
                    label: t("完全に削除"),
                    icon: "delete_forever" as const,
                    danger: true,
                    separatorBefore: true,
                    onSelect: onDelete,
                  },
                ]
              : [
                  {
                    id: "rename",
                    label: t("名前を変更"),
                    icon: "edit" as const,
                    onSelect: onStartRename,
                  },
                  {
                    id: "duplicate",
                    label: t("複製"),
                    icon: "content_copy" as const,
                    onSelect: onDuplicate,
                  },
                  ...(note.folderId
                    ? [
                        {
                          id: "unfile",
                          label: t("フォルダから出す"),
                          icon: "folder" as const,
                          onSelect: onRemoveFromFolder,
                        },
                      ]
                    : []),
                  // A tag row is a toggle, so it gets a check rather than an
                  // icon — including when off, which is what reserves the slot.
                  ...tags.map((tag) => ({
                    id: `tag-${tag.id}`,
                    label: tag.name,
                    checked: noteTagIds.has(tag.id),
                    separatorBefore: tag.id === tags[0]?.id,
                    onSelect: () => onToggleTag(tag.id, !noteTagIds.has(tag.id)),
                  })),
                  {
                    id: "trash",
                    label: t("ゴミ箱へ"),
                    icon: "delete" as const,
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

/**
 * The notes inside a class box.
 *
 * Separate from the local grid because almost nothing is shared: these come
 * from a different server, have no local catalog row, and open as a copy —
 * there is no rename, no trash, no drag to a folder. Reusing `NoteCard` would
 * mean disabling most of it.
 */
function ClassBoxGrid({
  listing,
  loading,
  error,
  onRetry,
  onOpen,
}: {
  listing: ClassBoxListing | null;
  loading: boolean;
  error: string | null;
  onRetry: () => void;
  onOpen: (documentId: string, title: string | null) => void;
}) {
  const { t } = useTranslation();

  if (loading) return <div className="library__empty">{t("読み込み中…")}</div>;

  if (!listing) {
    return (
      <div className="library__empty">
        <Icon name="school" size={48} />
        <p>{t("クラスを開けませんでした。")}</p>
        {/*
         * The server's own words, verbatim. The message names the step and the
         * request that failed; replacing it with a sentence of our own is what
         * left this impossible to diagnose from a screenshot.
         */}
        {error && (
          <div className="notice notice--error" style={{ textAlign: "left" }}>
            <Icon name="error" size={20} />
            <span>{error}</span>
          </div>
        )}
        <button type="button" className="btn" onClick={onRetry}>
          <Icon name="refresh" size={18} />
          {t("再読み込み")}
        </button>
      </div>
    );
  }

  if (listing.documents.length === 0) {
    return (
      <div className="library__empty">
        <Icon name="school" size={48} />
        <p>{t("ノートはまだありません。")}</p>
        {listing.unrecognised.length > 0 && (
          // An unreadable class box and an empty one mean very different
          // things; saying "empty" for both would send a teacher looking for
          // the wrong problem.
          <div className="notice notice--warning">
            <Icon name="warning" size={20} />
            <span>
              {t("中身を解釈できませんでした({count} 個のモデル、未知の種別: {types})。", {
                count: listing.modelCount,
                types: listing.unrecognised.join(", "),
              })}
            </span>
          </div>
        )}
      </div>
    );
  }

  return (
    <div className="library__grid">
      {listing.documents.map((doc) => (
        <div key={doc.documentId} className="note-card">
          <button
            type="button"
            className="note-card__open"
            onClick={() => onOpen(doc.documentId, doc.title)}
          >
            <div className="note-card__thumb" />
          </button>
          <div className="note-card__body">
            <div className="note-card__title" title={doc.title ?? doc.documentId}>
              {doc.title ?? doc.documentId}
            </div>
            <div className="note-card__meta">{t("端末に複製して開きます")}</div>
          </div>
        </div>
      ))}
    </div>
  );
}
