/**
 * The sync engine.
 *
 * One pass does three things, in this order:
 *   1. push local notes whose revision has moved past their last synced one
 *   2. pull everything the drive changed since our last delta
 *   3. resolve any write the server refused
 *
 * Push before pull so a conflict is discovered while we still hold the local
 * version in hand.
 *
 * Conflict resolution is docs/12 §4's: the server wins, and the local version
 * is kept as a duplicate rather than discarded. Merging two divergent page
 * trees automatically would produce a page neither user drew, and silently
 * dropping one side is worse still. docs/12 §4 also notes the original's
 * notification for this is a silent no-op — here the outcome is reported.
 */

import * as api from "../ipc/api";
import type { NoteSummary } from "../ipc/api";
import { newNoteId } from "../model/ids";
import { ConflictError, type SyncClient } from "./client";

export interface SyncOutcome {
  pushed: number;
  pulled: number;
  deleted: number;
  /** Notes whose local version was kept as a duplicate. */
  conflicts: { id: string; title: string; duplicateId: string }[];
  errors: string[];
}

export interface SyncProgress {
  (stage: string, done: number, total: number): void;
}

/** A note has unsynced work when its revision is past the last synced one. */
export function hasLocalChanges(note: NoteSummary): boolean {
  if (note.syncedRevision === null || note.syncedRevision === undefined) return true;
  return note.revision > note.syncedRevision;
}

export async function runSync(
  client: SyncClient,
  onProgress?: SyncProgress,
): Promise<SyncOutcome> {
  const outcome: SyncOutcome = {
    pushed: 0,
    pulled: 0,
    deleted: 0,
    conflicts: [],
    errors: [],
  };

  const local = await api.libraryList({});
  const localById = new Map(local.map((n) => [n.id, n]));

  // -- 1. push ---------------------------------------------------------------
  const pending = local.filter(hasLocalChanges);
  for (const [i, note] of pending.entries()) {
    onProgress?.("push", i, pending.length);
    try {
      const tree = await api.noteLoad(note.id);
      const meta = await client.putDocument(
        note.id,
        note.title,
        JSON.stringify(tree),
        note.serverRevision ?? null,
      );
      await api.librarySetSyncState(note.id, meta.revision, note.revision);
      outcome.pushed += 1;
    } catch (err) {
      if (err instanceof ConflictError) {
        try {
          const duplicateId = await keepLocalAsDuplicate(note);
          // The server's version takes the original id, so other devices and
          // any links to it keep resolving to the same note.
          await adoptServerVersion(note.id, err.server.title, err.serverData, err.server.revision);
          outcome.conflicts.push({ id: note.id, title: note.title, duplicateId });
        } catch (nested) {
          outcome.errors.push(`${note.title}: ${nested}`);
        }
      } else {
        outcome.errors.push(`${note.title}: ${err}`);
      }
    }
  }

  // -- 2. pull ---------------------------------------------------------------
  const since = await api.syncDriveRevision();
  const delta = await client.delta(since);

  for (const [i, remote] of delta.documents.entries()) {
    onProgress?.("pull", i, delta.documents.length);
    const localNote = localById.get(remote.id);

    if (remote.deleted) {
      // Only honour a remote deletion for a note we have no newer work in.
      if (localNote && !hasLocalChanges(localNote)) {
        await api.librarySetTrashed(remote.id, true);
        outcome.deleted += 1;
      }
      continue;
    }

    // Already current: the revision we last accepted matches what is offered.
    if (localNote && localNote.serverRevision === remote.revision && !hasLocalChanges(localNote)) {
      continue;
    }
    // A note we pushed in this same pass is already at this revision.
    if (localNote?.serverRevision === remote.revision) continue;

    try {
      const doc = await client.getDocument(remote.id);
      await adoptServerVersion(remote.id, doc.title, doc.data, doc.revision);
      outcome.pulled += 1;
    } catch (err) {
      outcome.errors.push(`${remote.title}: ${err}`);
    }
  }

  await api.syncSetDriveRevision(delta.driveRevision);
  onProgress?.("done", 1, 1);
  return outcome;
}

/**
 * Writes the server's version over the local note.
 *
 * `syncedRevision` is set to the note's *new* local revision, so the note is
 * not immediately considered dirty again and pushed straight back.
 */
async function adoptServerVersion(
  id: string,
  title: string,
  data: string | null,
  serverRevision: number,
): Promise<void> {
  if (!data) return;
  const tree = JSON.parse(data) as import("../model/generic").GenericTree;

  const summaries = await api.libraryList({});
  const existing = summaries.find((n) => n.id === id);
  const createdAt = existing?.createdAt ?? new Date().toISOString();
  const nextRevision = (existing?.revision ?? 0) + 1;

  if (existing) {
    await api.noteSave(tree, title, createdAt, nextRevision);
    await api.libraryRename(id, title);
  } else {
    await api.libraryCreate(tree, title);
  }
  await api.librarySetSyncState(id, serverRevision, nextRevision);
}

/** Copies the local note under a new id so the losing version is not lost. */
async function keepLocalAsDuplicate(note: NoteSummary): Promise<string> {
  const duplicateId = newNoteId();
  await api.libraryDuplicate(note.id, duplicateId, `${note.title} (この端末の版)`);
  // The duplicate is local-only; it has never been on the server.
  await api.librarySetSyncState(duplicateId, 0, 0);
  return duplicateId;
}
