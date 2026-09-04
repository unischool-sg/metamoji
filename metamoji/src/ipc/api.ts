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

export interface NoteSummary {
  id: string;
  title: string;
  createdAt: string;
  updatedAt: string;
  pageCount: number;
  revision: number;
  thumbnail: string | null;
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

export async function libraryList(includeTrashed = false): Promise<NoteSummary[]> {
  if (!isTauri()) return memoryBackend.libraryList();
  return invoke<NoteSummary[]>("library_list", { includeTrashed });
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
): Promise<string> {
  if (!isTauri()) return memoryBackend.noteSave(tree, title, createdAt, revision);
  return invoke<string>("note_save", { tree, title, createdAt, revision });
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
  return invoke<string[]>("asset_list", { noteId });
}

export async function fileReadDataUrl(path: string): Promise<string> {
  return invoke<string>("file_read_data_url", { path });
}

export async function fileWriteBytes(path: string, dataUrl: string): Promise<void> {
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
