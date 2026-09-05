/**
 * Sync engine tests, run against the in-memory backend.
 *
 * These exercise the client half of the contract: which notes are considered
 * dirty, and what happens when the server refuses a write. The server half is
 * covered in `server/src/sync.test.ts`.
 */

import { beforeEach, describe, expect, it, vi } from "vitest";

import { hasLocalChanges, runSync } from "./engine";
import { ConflictError, type DocumentMeta, type SyncClient } from "./client";
import * as api from "../ipc/api";
import { toGeneric } from "../model/converter";
import { createDocument } from "../model/factory";
import type { NoteSummary } from "../ipc/api";

function summary(over: Partial<NoteSummary> = {}): NoteSummary {
  return {
    id: "n1",
    title: "ノート",
    createdAt: "2026-01-01T00:00:00Z",
    updatedAt: "2026-01-01T00:00:00Z",
    pageCount: 1,
    revision: 0,
    thumbnail: null,
    folderId: null,
    trashed: false,
    serverRevision: null,
    syncedRevision: null,
    tags: [],
    ...over,
  };
}

function meta(over: Partial<DocumentMeta> = {}): DocumentMeta {
  return {
    id: "n1",
    title: "ノート",
    revision: 1,
    driveRevision: 1,
    updatedAt: "2026-01-01T00:00:00Z",
    deleted: false,
    ...over,
  };
}

/** A client stub; only the methods the engine calls need to exist. */
function stubClient(over: Partial<SyncClient> = {}): SyncClient {
  return {
    delta: vi.fn(async () => ({ driveRevision: 0, documents: [] })),
    getDocument: vi.fn(async () => ({
      id: "n1",
      title: "ノート",
      revision: 1,
      driveRevision: 1,
      updatedAt: "2026-01-01T00:00:00Z",
      data: JSON.stringify(toGeneric(createDocument("リモート"))),
    })),
    putDocument: vi.fn(async () => meta()),
    ...over,
  } as unknown as SyncClient;
}

beforeEach(() => {
  window.sessionStorage.clear();
});

describe("hasLocalChanges", () => {
  it("treats a never-synced note as dirty", () => {
    expect(hasLocalChanges(summary({ syncedRevision: null }))).toBe(true);
  });

  it("treats a note edited since the last sync as dirty", () => {
    expect(hasLocalChanges(summary({ revision: 5, syncedRevision: 3 }))).toBe(true);
  });

  it("treats an unchanged note as clean", () => {
    expect(hasLocalChanges(summary({ revision: 3, syncedRevision: 3 }))).toBe(false);
  });
});

describe("runSync", () => {
  it("pushes a note that has never been synced", async () => {
    const doc = createDocument("ローカル");
    await api.libraryCreate(toGeneric(doc), doc.meta.title);

    const client = stubClient();
    const outcome = await runSync(client);

    expect(outcome.pushed).toBe(1);
    expect(client.putDocument).toHaveBeenCalledTimes(1);
    // A never-synced note sends `check: null` — it is a create, not an update.
    expect(vi.mocked(client.putDocument).mock.calls[0][3]).toBeNull();
  });

  it("does not push a note that is already in sync", async () => {
    const doc = createDocument("同期済み");
    const created = await api.libraryCreate(toGeneric(doc), doc.meta.title);
    await api.librarySetSyncState(created.id, 4, created.revision);

    const client = stubClient();
    const outcome = await runSync(client);

    expect(outcome.pushed).toBe(0);
    expect(client.putDocument).not.toHaveBeenCalled();
  });

  it("sends the last accepted revision as the lock token", async () => {
    const doc = createDocument("更新");
    const created = await api.libraryCreate(toGeneric(doc), doc.meta.title);
    // Synced at server revision 7, then edited locally.
    await api.librarySetSyncState(created.id, 7, created.revision);
    await api.noteSave(toGeneric(doc), doc.meta.title, created.createdAt, created.revision + 1);

    const client = stubClient();
    await runSync(client);

    expect(vi.mocked(client.putDocument).mock.calls[0][3]).toBe(7);
  });

  it("keeps the local version as a duplicate when the server refuses", async () => {
    const doc = createDocument("衝突するノート");
    await api.libraryCreate(toGeneric(doc), doc.meta.title);

    const serverTree = JSON.stringify(toGeneric(createDocument("サーバーの版")));
    const client = stubClient({
      putDocument: vi.fn(async () => {
        throw new ConflictError(meta({ revision: 9, title: "サーバーの版" }), serverTree);
      }),
    });

    const outcome = await runSync(client);

    expect(outcome.conflicts).toHaveLength(1);
    expect(outcome.conflicts[0].title).toBe("衝突するノート");

    // docs/12 §4: the server wins, but the local version survives as a copy —
    // so nothing the user drew is destroyed.
    const notes = await api.libraryList({});
    expect(notes).toHaveLength(2);
    expect(notes.some((n) => n.title.includes("この端末の版"))).toBe(true);
  });

  it("pulls a document that is new to this device", async () => {
    const remoteTree = JSON.stringify(toGeneric(createDocument("リモート")));
    const client = stubClient({
      delta: vi.fn(async () => ({
        driveRevision: 3,
        documents: [meta({ id: "remote_1", title: "リモート", revision: 2 })],
      })),
      getDocument: vi.fn(async () => ({
        id: "remote_1",
        title: "リモート",
        revision: 2,
        driveRevision: 3,
        updatedAt: "2026-01-01T00:00:00Z",
        data: remoteTree,
      })),
    });

    const outcome = await runSync(client);
    expect(outcome.pulled).toBe(1);

    const notes = await api.libraryList({});
    expect(notes.some((n) => n.title === "リモート")).toBe(true);
  });

  it("records the drive revision so the next delta asks for the right window", async () => {
    const client = stubClient({
      delta: vi.fn(async () => ({ driveRevision: 42, documents: [] })),
    });

    await runSync(client);
    expect(await api.syncDriveRevision()).toBe(42);
  });

  it("honours a remote deletion only when there is no newer local work", async () => {
    const doc = createDocument("消される");
    const created = await api.libraryCreate(toGeneric(doc), doc.meta.title);
    await api.librarySetSyncState(created.id, 1, created.revision);

    const client = stubClient({
      delta: vi.fn(async () => ({
        driveRevision: 5,
        documents: [meta({ id: created.id, deleted: true, revision: 2 })],
      })),
    });

    const outcome = await runSync(client);
    expect(outcome.deleted).toBe(1);
    expect((await api.libraryList({})).some((n) => n.id === created.id)).toBe(false);
  });

  it("collects errors rather than abandoning the whole pass", async () => {
    const doc = createDocument("失敗するノート");
    await api.libraryCreate(toGeneric(doc), doc.meta.title);

    const client = stubClient({
      putDocument: vi.fn(async () => {
        throw new Error("ネットワークエラー");
      }),
    });

    const outcome = await runSync(client);
    expect(outcome.errors).toHaveLength(1);
    expect(outcome.errors[0]).toContain("ネットワークエラー");
    // The pull half still ran.
    expect(client.delta).toHaveBeenCalled();
  });

  it("reports progress for both halves", async () => {
    const doc = createDocument("進捗");
    await api.libraryCreate(toGeneric(doc), doc.meta.title);

    const stages: string[] = [];
    await runSync(stubClient(), (stage) => stages.push(stage));

    expect(stages).toContain("push");
    expect(stages).toContain("done");
  });
});
