/**
 * In-memory stand-in for the Rust backend.
 *
 * Used when the frontend runs outside Tauri — `vite dev` opened in a plain
 * browser. That is worth supporting for two reasons: the editor can be worked
 * on and visually checked without a Rust rebuild in the loop, and component
 * tests can exercise real screens without stubbing `invoke` at every call site.
 *
 * Notes live in `sessionStorage`, so a reload keeps them but the data never
 * masquerades as a real library.
 */

import type { GenericTree } from "../model/generic";
import type { AtdocImportResult, AppStatus, Folder, ListQuery, NoteSummary, Tag } from "./api";

const NOTES_KEY = "metamoji.dev.notes";
const FOLDERS_KEY = "metamoji.dev.folders";
const TAGS_KEY = "metamoji.dev.tags";
const DRIVE_REV_KEY = "metamoji.dev.driveRevision";
const TREE_PREFIX = "metamoji.dev.tree.";
const ASSET_PREFIX = "metamoji.dev.asset.";

function readNotes(): NoteSummary[] {
  try {
    return JSON.parse(sessionStorage.getItem(NOTES_KEY) ?? "[]") as NoteSummary[];
  } catch {
    return [];
  }
}

function writeNotes(notes: NoteSummary[]): void {
  sessionStorage.setItem(NOTES_KEY, JSON.stringify(notes));
}

function countPages(tree: GenericTree): number {
  return Object.values(tree.models).filter((m) => m.modelType === "$page").length;
}

export const memoryBackend = {
  appStatus(): AppStatus {
    return {
      ready: true,
      dataDir: "(in-memory)",
      schemaVersion: 1,
      needsLogin: false,
    };
  },

  libraryList(query: ListQuery = {}): NoteSummary[] {
    let notes = readNotes().filter((n) => Boolean(n.trashed) === Boolean(query.trashed));

    if (!query.trashed) {
      if (query.folderId) notes = notes.filter((n) => n.folderId === query.folderId);
      else if (query.rootOnly) notes = notes.filter((n) => !n.folderId);
    }
    if (query.tagId) {
      notes = notes.filter((n) => n.tags.some((t) => t.id === query.tagId));
    }
    if (query.text?.trim()) {
      const needle = query.text.trim().toLowerCase();
      notes = notes.filter((n) => n.title.toLowerCase().includes(needle));
    }

    const sort = query.sort ?? "updated";
    return notes.sort((a, b) =>
      sort === "title"
        ? a.title.localeCompare(b.title)
        : sort === "created"
          ? b.createdAt.localeCompare(a.createdAt)
          : b.updatedAt.localeCompare(a.updatedAt),
    );
  },

  librarySetSyncState(id: string, serverRevision: number, syncedRevision: number): void {
    writeNotes(
      readNotes().map((n) => (n.id === id ? { ...n, serverRevision, syncedRevision } : n)),
    );
  },

  syncDriveRevision(): number {
    return Number(sessionStorage.getItem(DRIVE_REV_KEY) ?? 0);
  },

  syncSetDriveRevision(revision: number): void {
    sessionStorage.setItem(DRIVE_REV_KEY, String(revision));
  },

  librarySetFolder(id: string, folderId: string | null): void {
    writeNotes(readNotes().map((n) => (n.id === id ? { ...n, folderId } : n)));
  },

  folderList(): Folder[] {
    let folders: Folder[];
    try {
      folders = JSON.parse(sessionStorage.getItem(FOLDERS_KEY) ?? "[]") as Folder[];
    } catch {
      return [];
    }
    // The counts are derived, not stored — same as the SQL backend, so the two
    // agree on what the sidebar shows.
    const counts = new Map<string, number>();
    for (const note of readNotes()) {
      if (note.trashed || !note.folderId) continue;
      counts.set(note.folderId, (counts.get(note.folderId) ?? 0) + 1);
    }
    return folders.map((f) => ({ ...f, noteCount: counts.get(f.id) ?? 0 }));
  },

  folderCreate(id: string, name: string, parentId: string | null): void {
    const folders = memoryBackend.folderList();
    folders.push({ id, name, parentId, ord: folders.length, noteCount: 0 });
    sessionStorage.setItem(FOLDERS_KEY, JSON.stringify(folders));
  },

  folderRename(id: string, name: string): void {
    const folders = memoryBackend.folderList().map((f) => (f.id === id ? { ...f, name } : f));
    sessionStorage.setItem(FOLDERS_KEY, JSON.stringify(folders));
  },

  folderDelete(id: string): void {
    sessionStorage.setItem(
      FOLDERS_KEY,
      JSON.stringify(memoryBackend.folderList().filter((f) => f.id !== id)),
    );
    // Notes are released to the root rather than deleted with the folder.
    writeNotes(readNotes().map((n) => (n.folderId === id ? { ...n, folderId: null } : n)));
  },

  tagList(): Tag[] {
    try {
      return JSON.parse(sessionStorage.getItem(TAGS_KEY) ?? "[]") as Tag[];
    } catch {
      return [];
    }
  },

  tagCreate(id: string, name: string, color: string): Tag {
    const tags = memoryBackend.tagList();
    const existing = tags.find((t) => t.name === name);
    if (existing) return existing;
    const tag = { id, name, color };
    tags.push(tag);
    sessionStorage.setItem(TAGS_KEY, JSON.stringify(tags));
    return tag;
  },

  tagDelete(id: string): void {
    sessionStorage.setItem(
      TAGS_KEY,
      JSON.stringify(memoryBackend.tagList().filter((t) => t.id !== id)),
    );
    writeNotes(readNotes().map((n) => ({ ...n, tags: n.tags.filter((t) => t.id !== id) })));
  },

  tagSetOnDocument(documentId: string, tagId: string, on: boolean): void {
    const tag = memoryBackend.tagList().find((t) => t.id === tagId);
    if (!tag) return;
    writeNotes(
      readNotes().map((n) =>
        n.id !== documentId
          ? n
          : {
              ...n,
              tags: on
                ? n.tags.some((t) => t.id === tagId)
                  ? n.tags
                  : [...n.tags, tag]
                : n.tags.filter((t) => t.id !== tagId),
            },
      ),
    );
  },

  libraryCreate(tree: GenericTree, title: string): NoteSummary {
    const now = new Date().toISOString();
    const summary: NoteSummary = {
      id: tree.rootId,
      title,
      createdAt: now,
      updatedAt: now,
      pageCount: countPages(tree),
      revision: 0,
      thumbnail: null,
      folderId: null,
      trashed: false,
      serverRevision: null,
      syncedRevision: null,
      tags: [],
    };
    sessionStorage.setItem(TREE_PREFIX + tree.rootId, JSON.stringify(tree));
    writeNotes([summary, ...readNotes()]);
    return summary;
  },

  libraryRename(id: string, title: string): void {
    writeNotes(readNotes().map((n) => (n.id === id ? { ...n, title } : n)));
  },

  librarySetTrashed(id: string, trashed: boolean): void {
    writeNotes(readNotes().map((n) => (n.id === id ? { ...n, trashed } : n)));
  },

  libraryDuplicate(id: string, newId: string, title: string): NoteSummary {
    const source = readNotes().find((n) => n.id === id);
    const tree = sessionStorage.getItem(TREE_PREFIX + id);
    if (!source || !tree) throw new Error(`note not found: ${id}`);

    const now = new Date().toISOString();
    // The copy carries a new root id, so the two notes are not the same
    // document wearing two names.
    const copy = { ...(JSON.parse(tree) as GenericTree) };
    const remapped = JSON.stringify(copy).replaceAll(source.id, newId);

    sessionStorage.setItem(TREE_PREFIX + newId, remapped);
    const summary: NoteSummary = {
      ...source,
      id: newId,
      title,
      createdAt: now,
      updatedAt: now,
      serverRevision: null,
      syncedRevision: null,
    };
    writeNotes([summary, ...readNotes()]);
    return summary;
  },

  assetList(noteId: string): string[] {
    const prefix = `${ASSET_PREFIX}${noteId}.`;
    return Object.keys(sessionStorage)
      .filter((k) => k.startsWith(prefix))
      .map((k) => k.slice(prefix.length));
  },

  libraryDelete(id: string): void {
    sessionStorage.removeItem(TREE_PREFIX + id);
    writeNotes(readNotes().filter((n) => n.id !== id));
  },

  noteLoad(id: string): GenericTree {
    const raw = sessionStorage.getItem(TREE_PREFIX + id);
    if (!raw) throw new Error(`note not found: ${id}`);
    return JSON.parse(raw) as GenericTree;
  },

  noteSave(tree: GenericTree, title: string, _createdAt: string, revision: number): string {
    const now = new Date().toISOString();
    sessionStorage.setItem(TREE_PREFIX + tree.rootId, JSON.stringify(tree));
    writeNotes(
      readNotes().map((n) =>
        n.id === tree.rootId
          ? { ...n, title, updatedAt: now, revision, pageCount: countPages(tree) }
          : n,
      ),
    );
    return now;
  },

  noteSetThumbnail(id: string, _pageId: string, _revision: number, dataUrl: string): void {
    writeNotes(readNotes().map((n) => (n.id === id ? { ...n, thumbnail: dataUrl } : n)));
  },

  assetPut(noteId: string, ticket: string, dataUrl: string): string {
    sessionStorage.setItem(`${ASSET_PREFIX}${noteId}.${ticket}`, dataUrl);
    return ticket;
  },

  assetGet(noteId: string, ticket: string): string {
    const value = sessionStorage.getItem(`${ASSET_PREFIX}${noteId}.${ticket}`);
    if (!value) throw new Error(`asset not found: ${ticket}`);
    return value;
  },

  atdocImport(): AtdocImportResult {
    // Importing needs the Rust parser; there is nothing honest to fake here.
    throw new Error(".atdoc の取り込みはデスクトップアプリでのみ利用できます");
  },
};
