/**
 * Document sync.
 *
 * The revision model is the one docs/06 §5 documents for the original's
 * personal sync service, and docs/12 §4 describes its conflict strategy:
 * the server wins, and the client keeps its losing version as a duplicate so
 * nothing is destroyed. That is a sound choice for a note app — merging two
 * divergent page trees automatically would produce something neither user
 * drew — and it is what this implements.
 *
 * A write carries `check`, the revision the client believed was current. If the
 * server has moved on, the write is refused with 409 and the current state, and
 * the client resolves it. This is the optimistic lock docs/06 §5 calls out.
 */

import type { Database } from "bun:sqlite";

import { driveRevision, nextDriveRevision, type DocumentRow } from "./db";

export interface DocumentMeta {
  id: string;
  title: string;
  revision: number;
  driveRevision: number;
  updatedAt: string;
  deleted: boolean;
}

export interface DriveDelta {
  driveRevision: number;
  documents: DocumentMeta[];
}

function toMeta(row: DocumentRow): DocumentMeta {
  return {
    id: row.id,
    title: row.title,
    revision: row.revision,
    driveRevision: row.drive_revision,
    updatedAt: row.updated_at,
    deleted: row.deleted !== 0,
  };
}

/** Documents that changed after `sinceRevision`. */
export function driveDelta(db: Database, userId: string, sinceRevision: number): DriveDelta {
  const rows = db
    .query<DocumentRow, [string, number]>(
      `SELECT * FROM documents
       WHERE user_id = ? AND drive_revision > ?
       ORDER BY drive_revision ASC`,
    )
    .all(userId, sinceRevision);

  return {
    driveRevision: driveRevision(db, userId),
    documents: rows.map(toMeta),
  };
}

export function getDocument(db: Database, userId: string, id: string): DocumentRow | null {
  return (
    db
      .query<DocumentRow, [string, string]>(
        "SELECT * FROM documents WHERE user_id = ? AND id = ?",
      )
      .get(userId, id) ?? null
  );
}

export type PutOutcome =
  | { status: "ok"; meta: DocumentMeta }
  | { status: "conflict"; server: DocumentMeta; serverData: string | null };

/**
 * Writes a document, refusing if the client's expected revision is stale.
 *
 * `check` is the revision the client last saw. `null` means "this document is
 * new"; if one already exists under that id, that is a conflict too — two
 * devices created the same note offline.
 */
export function putDocument(
  db: Database,
  userId: string,
  id: string,
  title: string,
  data: string,
  check: number | null,
): PutOutcome {
  const existing = getDocument(db, userId, id);

  const stale =
    existing === null ? check !== null : check === null || check !== existing.revision;

  if (stale && existing !== null) {
    return { status: "conflict", server: toMeta(existing), serverData: existing.data };
  }
  if (stale && existing === null) {
    // The client expected a document that is not here — it was deleted, or the
    // client is talking to a different account than it thinks.
    return {
      status: "conflict",
      server: {
        id,
        title,
        revision: 0,
        driveRevision: driveRevision(db, userId),
        updatedAt: new Date().toISOString(),
        deleted: true,
      },
      serverData: null,
    };
  }

  const revision = (existing?.revision ?? 0) + 1;
  const nextDrive = nextDriveRevision(db, userId);
  const updatedAt = new Date().toISOString();

  db.run(
    `INSERT INTO documents(id, user_id, title, revision, drive_revision, updated_at, deleted, data)
     VALUES (?,?,?,?,?,?,0,?)
     ON CONFLICT(id, user_id) DO UPDATE SET
       title = excluded.title,
       revision = excluded.revision,
       drive_revision = excluded.drive_revision,
       updated_at = excluded.updated_at,
       deleted = 0,
       data = excluded.data`,
    [id, userId, title, revision, nextDrive, updatedAt, data],
  );

  return {
    status: "ok",
    meta: {
      id,
      title,
      revision,
      driveRevision: nextDrive,
      updatedAt,
      deleted: false,
    },
  };
}

/**
 * Marks a document deleted.
 *
 * A tombstone rather than a row removal: a client that has been offline needs
 * to learn the document went away, and a missing row is indistinguishable from
 * one it has simply never seen.
 */
export function deleteDocument(db: Database, userId: string, id: string): DocumentMeta | null {
  const existing = getDocument(db, userId, id);
  if (!existing) return null;

  const nextDrive = nextDriveRevision(db, userId);
  const updatedAt = new Date().toISOString();
  db.run(
    `UPDATE documents
     SET deleted = 1, data = NULL, revision = revision + 1,
         drive_revision = ?, updated_at = ?
     WHERE user_id = ? AND id = ?`,
    [nextDrive, updatedAt, userId, id],
  );

  return {
    ...toMeta(existing),
    revision: existing.revision + 1,
    driveRevision: nextDrive,
    updatedAt,
    deleted: true,
  };
}
