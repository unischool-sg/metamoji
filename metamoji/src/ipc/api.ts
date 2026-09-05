/**
 * Typed wrappers over the Tauri command surface.
 *
 * Every call the frontend makes to Rust goes through here, so the IPC contract
 * has exactly one definition site. `invoke` is never called anywhere else.
 */

import { invoke } from "@tauri-apps/api/core";
import { listen } from "@tauri-apps/api/event";
import type { GenericTree } from "../model/generic";
import { memoryBackend } from "./memoryBackend";

export interface Tag {
  id: string;
  name: string;
  color: string;
}

export interface Folder {
  id: string;
  name: string;
  parentId: string | null;
  ord: number;
  noteCount: number;
}

export interface NoteSummary {
  id: string;
  title: string;
  createdAt: string;
  updatedAt: string;
  pageCount: number;
  revision: number;
  thumbnail: string | null;
  folderId: string | null;
  trashed: boolean;
  /** Revision the server last accepted, or null if never synced. */
  serverRevision: number | null;
  /** Local revision at the time of that sync. */
  syncedRevision: number | null;
  tags: Tag[];
}

export type NoteSort = "updated" | "created" | "title";

export interface ListQuery {
  trashed?: boolean;
  folderId?: string | null;
  /** With no folder given, restrict to notes that are in no folder. */
  rootOnly?: boolean;
  tagId?: string | null;
  text?: string;
  sort?: NoteSort;
}

export interface AppStatus {
  ready: boolean;
  dataDir: string;
  schemaVersion: number;
  needsLogin: boolean;
}

export interface ImportReport {
  formatVersion: number;
  modelCount: number;
  pageCount: number;
  strokeCount: number;
  unitCounts: Record<string, number>;
  undecodedModels: number;
  warnings: string[];
}

export interface AtdocImportResult {
  tree: GenericTree;
  report: ImportReport;
}

export interface ExportPagePayload {
  dataUrl: string;
  width: number;
  height: number;
}

/**
 * True when running inside Tauri. `vite dev` can also be opened in a plain
 * browser, which is convenient for working on the editor without a Rust
 * rebuild in the loop; there, the calls below fall back to an in-memory backend
 * instead of throwing on a missing `invoke`.
 */
export const isTauri = (): boolean =>
  typeof window !== "undefined" && "__TAURI_INTERNALS__" in window;

// ---------------------------------------------------------------------------
// App
// ---------------------------------------------------------------------------

export async function appStatus(): Promise<AppStatus> {
  if (!isTauri()) return memoryBackend.appStatus();
  return invoke<AppStatus>("app_status");
}

export async function onAppReady(fn: (status: AppStatus) => void): Promise<() => void> {
  if (!isTauri()) {
    fn(memoryBackend.appStatus());
    return () => {};
  }
  return listen<AppStatus>("app://ready", (e) => fn(e.payload));
}

// ---------------------------------------------------------------------------
// Library
// ---------------------------------------------------------------------------

export async function libraryList(query: ListQuery = {}): Promise<NoteSummary[]> {
  if (!isTauri()) return memoryBackend.libraryList(query);
  return invoke<NoteSummary[]>("library_list", { query });
}

export async function librarySetFolder(
  id: string,
  folderId: string | null,
): Promise<void> {
  if (!isTauri()) return memoryBackend.librarySetFolder(id, folderId);
  return invoke("library_set_folder", { id, folderId });
}

// ---------------------------------------------------------------------------
// Folders and tags
// ---------------------------------------------------------------------------

export async function librarySetSyncState(
  id: string,
  serverRevision: number,
  syncedRevision: number,
): Promise<void> {
  if (!isTauri()) return memoryBackend.librarySetSyncState(id, serverRevision, syncedRevision);
  return invoke("library_set_sync_state", { id, serverRevision, syncedRevision });
}

export async function syncDriveRevision(): Promise<number> {
  if (!isTauri()) return memoryBackend.syncDriveRevision();
  return invoke<number>("sync_drive_revision");
}

export async function syncSetDriveRevision(revision: number): Promise<void> {
  if (!isTauri()) return memoryBackend.syncSetDriveRevision(revision);
  return invoke("sync_set_drive_revision", { revision });
}

export async function folderList(): Promise<Folder[]> {
  if (!isTauri()) return memoryBackend.folderList();
  return invoke<Folder[]>("folder_list");
}

export async function folderCreate(
  id: string,
  name: string,
  parentId: string | null = null,
): Promise<void> {
  if (!isTauri()) return memoryBackend.folderCreate(id, name, parentId);
  return invoke("folder_create", { id, name, parentId });
}

export async function folderRename(id: string, name: string): Promise<void> {
  if (!isTauri()) return memoryBackend.folderRename(id, name);
  return invoke("folder_rename", { id, name });
}

export async function folderDelete(id: string): Promise<void> {
  if (!isTauri()) return memoryBackend.folderDelete(id);
  return invoke("folder_delete", { id });
}

export async function tagList(): Promise<Tag[]> {
  if (!isTauri()) return memoryBackend.tagList();
  return invoke<Tag[]>("tag_list");
}

export async function tagCreate(id: string, name: string, color: string): Promise<Tag> {
  if (!isTauri()) return memoryBackend.tagCreate(id, name, color);
  return invoke<Tag>("tag_create", { id, name, color });
}

export async function tagDelete(id: string): Promise<void> {
  if (!isTauri()) return memoryBackend.tagDelete(id);
  return invoke("tag_delete", { id });
}

export async function tagSetOnDocument(
  documentId: string,
  tagId: string,
  on: boolean,
): Promise<void> {
  if (!isTauri()) return memoryBackend.tagSetOnDocument(documentId, tagId, on);
  return invoke("tag_set_on_document", { documentId, tagId, on });
}

export async function libraryCreate(tree: GenericTree, title: string): Promise<NoteSummary> {
  if (!isTauri()) return memoryBackend.libraryCreate(tree, title);
  return invoke<NoteSummary>("library_create", { tree, title });
}

export async function libraryRename(id: string, title: string): Promise<void> {
  if (!isTauri()) return memoryBackend.libraryRename(id, title);
  return invoke("library_rename", { id, title });
}

export async function librarySetTrashed(id: string, trashed: boolean): Promise<void> {
  if (!isTauri()) return memoryBackend.librarySetTrashed(id, trashed);
  return invoke("library_set_trashed", { id, trashed });
}

export async function libraryDelete(id: string): Promise<void> {
  if (!isTauri()) return memoryBackend.libraryDelete(id);
  return invoke("library_delete", { id });
}

export async function libraryDuplicate(
  id: string,
  newId: string,
  title: string,
): Promise<NoteSummary> {
  if (!isTauri()) return memoryBackend.libraryDuplicate(id, newId, title);
  return invoke<NoteSummary>("library_duplicate", { id, newId, title });
}

// ---------------------------------------------------------------------------
// Notes
// ---------------------------------------------------------------------------

export async function noteLoad(id: string): Promise<GenericTree> {
  if (!isTauri()) return memoryBackend.noteLoad(id);
  return invoke<GenericTree>("note_load", { id });
}

export async function noteSave(
  tree: GenericTree,
  title: string,
  createdAt: string,
  revision: number,
  searchBody = "",
): Promise<string> {
  if (!isTauri()) return memoryBackend.noteSave(tree, title, createdAt, revision);
  return invoke<string>("note_save", { tree, title, createdAt, revision, searchBody });
}

export async function noteClose(id: string): Promise<void> {
  if (!isTauri()) return;
  return invoke("note_close", { id });
}

export async function noteSetThumbnail(
  id: string,
  pageId: string,
  revision: number,
  pngDataUrl: string,
): Promise<void> {
  if (!isTauri()) return memoryBackend.noteSetThumbnail(id, pageId, revision, pngDataUrl);
  return invoke("note_set_thumbnail", { id, pageId, revision, pngBase64: pngDataUrl });
}

// ---------------------------------------------------------------------------
// Assets
// ---------------------------------------------------------------------------

export async function assetPut(
  noteId: string,
  ticket: string,
  dataUrl: string,
): Promise<string> {
  if (!isTauri()) return memoryBackend.assetPut(noteId, ticket, dataUrl);
  return invoke<string>("asset_put", { noteId, ticket, dataUrl });
}

export async function assetGet(noteId: string, ticket: string): Promise<string> {
  if (!isTauri()) return memoryBackend.assetGet(noteId, ticket);
  return invoke<string>("asset_get", { noteId, ticket });
}

export async function assetList(noteId: string): Promise<string[]> {
  if (!isTauri()) return memoryBackend.assetList(noteId);
  return invoke<string[]>("asset_list", { noteId });
}

export async function fileReadDataUrl(path: string): Promise<string> {
  if (!isTauri()) throw new Error("ファイルの読み込みはデスクトップアプリでのみ利用できます");
  return invoke<string>("file_read_data_url", { path });
}

export async function fileWriteBytes(path: string, dataUrl: string): Promise<void> {
  if (!isTauri()) throw new Error("ファイルの書き出しはデスクトップアプリでのみ利用できます");
  return invoke("file_write_bytes", { path, dataUrl });
}

// ---------------------------------------------------------------------------
// .atdoc import
// ---------------------------------------------------------------------------

export async function atdocImport(
  path: string,
  newRootId: string,
): Promise<AtdocImportResult> {
  if (!isTauri()) return memoryBackend.atdocImport();
  return invoke<AtdocImportResult>("atdoc_import", { path, newRootId });
}

export async function atdocProbe(path: string): Promise<number> {
  if (!isTauri()) throw new Error(".atdoc の判定はデスクトップアプリでのみ利用できます");
  return invoke<number>("atdoc_probe", { path });
}

// ---------------------------------------------------------------------------
// Export
// ---------------------------------------------------------------------------

export async function exportPdf(
  path: string,
  title: string,
  pages: ExportPagePayload[],
): Promise<void> {
  if (!isTauri()) throw new Error("PDF の書き出しはデスクトップアプリでのみ利用できます");
  return invoke("export_pdf", { path, title, pages });
}
