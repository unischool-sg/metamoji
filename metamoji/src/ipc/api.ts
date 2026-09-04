/**
 * Typed wrappers over the Tauri command surface.
 *
 * Every call the frontend makes to Rust goes through here, so the IPC contract
 * has exactly one definition site. `invoke` is never called anywhere else.
 */

import { invoke } from "@tauri-apps/api/core";
import { listen } from "@tauri-apps/api/event";
import type { GenericTree } from "../model/generic";

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
  unitCounts: Record<string, number>;
  undecodedModels: number;
  warnings: string[];
}

export interface AtdocImportResult {
  tree: GenericTree;
  report: ImportReport;
}

/**
 * True when running inside Tauri. Vite's dev server can also be opened in a
 * plain browser, which is convenient for UI work; in that case the calls below
 * fall back to in-memory behaviour instead of throwing.
 */
export const isTauri = (): boolean =>
  typeof window !== "undefined" && "__TAURI_INTERNALS__" in window;

// ---------------------------------------------------------------------------
// App
// ---------------------------------------------------------------------------

export async function appStatus(): Promise<AppStatus> {
  return invoke<AppStatus>("app_status");
}

export async function onAppReady(fn: (status: AppStatus) => void): Promise<() => void> {
  const unlisten = await listen<AppStatus>("app://ready", (e) => fn(e.payload));
  return unlisten;
}

// ---------------------------------------------------------------------------
// Library
// ---------------------------------------------------------------------------

export async function libraryList(includeTrashed = false): Promise<NoteSummary[]> {
  return invoke<NoteSummary[]>("library_list", { includeTrashed });
}

export async function libraryCreate(tree: GenericTree, title: string): Promise<NoteSummary> {
  return invoke<NoteSummary>("library_create", { tree, title });
}

export async function libraryRename(id: string, title: string): Promise<void> {
  return invoke("library_rename", { id, title });
}

export async function librarySetTrashed(id: string, trashed: boolean): Promise<void> {
  return invoke("library_set_trashed", { id, trashed });
}

export async function libraryDelete(id: string): Promise<void> {
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
  return invoke<GenericTree>("note_load", { id });
}

export async function noteSave(
  tree: GenericTree,
  title: string,
  createdAt: string,
  revision: number,
): Promise<string> {
  return invoke<string>("note_save", { tree, title, createdAt, revision });
}

export async function noteClose(id: string): Promise<void> {
  return invoke("note_close", { id });
}

export async function noteSetThumbnail(
  id: string,
  pageId: string,
  revision: number,
  pngDataUrl: string,
): Promise<void> {
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
  return invoke<string>("asset_put", { noteId, ticket, dataUrl });
}

export async function assetGet(noteId: string, ticket: string): Promise<string> {
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
  return invoke<AtdocImportResult>("atdoc_import", { path, newRootId });
}

export async function atdocProbe(path: string): Promise<number> {
  return invoke<number>("atdoc_probe", { path });
}
