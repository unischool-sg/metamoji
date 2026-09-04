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
import type { AtdocImportResult, AppStatus, NoteSummary } from "./api";

const NOTES_KEY = "metamoji.dev.notes";
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

  libraryList(): NoteSummary[] {
    return readNotes();
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
    };
    sessionStorage.setItem(TREE_PREFIX + tree.rootId, JSON.stringify(tree));
    writeNotes([summary, ...readNotes()]);
    return summary;
  },

  libraryRename(id: string, title: string): void {
    writeNotes(readNotes().map((n) => (n.id === id ? { ...n, title } : n)));
  },

  librarySetTrashed(id: string, trashed: boolean): void {
    writeNotes(trashed ? readNotes().filter((n) => n.id !== id) : readNotes());
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
