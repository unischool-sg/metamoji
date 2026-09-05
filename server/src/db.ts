/**
 * Server storage.
 *
 * The schema follows the shape docs/06 §5 documents for the original's personal
 * sync service: a drive with a monotonic revision, documents carrying their own
 * revision, and an optimistic-lock token on write. That design is sound and
 * worth keeping — what is not kept is the wire protocol, which is replaced with
 * plain JSON over HTTP.
 */

import { Database } from "bun:sqlite";

export interface DriveRow {
  user_id: string;
  revision: number;
}

export interface DocumentRow {
  id: string;
  user_id: string;
  title: string;
  revision: number;
  /** Drive revision at which this document last changed, for delta sync. */
  drive_revision: number;
  updated_at: string;
  deleted: number;
  data: string | null;
}

export function openDatabase(path: string): Database {
  const db = new Database(path, { create: true });
  db.exec("PRAGMA journal_mode = WAL");
  db.exec("PRAGMA foreign_keys = ON");

  db.exec(`
    CREATE TABLE IF NOT EXISTS users (
      id            TEXT PRIMARY KEY,
      login_id      TEXT NOT NULL UNIQUE,
      display_name  TEXT NOT NULL,
      password_hash TEXT NOT NULL,
      created_at    TEXT NOT NULL
    );

    CREATE TABLE IF NOT EXISTS sessions (
      token      TEXT PRIMARY KEY,
      user_id    TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      created_at TEXT NOT NULL,
      expires_at TEXT NOT NULL
    );
    CREATE INDEX IF NOT EXISTS idx_sessions_user ON sessions(user_id);

    -- One drive per user. Its revision is the high-water mark a client syncs
    -- against: "give me everything that changed after N" is one indexed query
    -- rather than a diff of the whole document list.
    CREATE TABLE IF NOT EXISTS drives (
      user_id  TEXT PRIMARY KEY REFERENCES users(id) ON DELETE CASCADE,
      revision INTEGER NOT NULL DEFAULT 0
    );

    CREATE TABLE IF NOT EXISTS documents (
      id             TEXT NOT NULL,
      user_id        TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      title          TEXT NOT NULL,
      revision       INTEGER NOT NULL DEFAULT 0,
      drive_revision INTEGER NOT NULL DEFAULT 0,
      updated_at     TEXT NOT NULL,
      deleted        INTEGER NOT NULL DEFAULT 0,
      data           TEXT,
      PRIMARY KEY (id, user_id)
    );
    CREATE INDEX IF NOT EXISTS idx_documents_drive_rev
      ON documents(user_id, drive_revision);
  `);

  return db;
}

/**
 * Bumps and returns the drive revision.
 *
 * Every document write takes a new drive revision, which is what makes
 * "changed since N" answerable without comparing content.
 */
export function nextDriveRevision(db: Database, userId: string): number {
  db.run(
    "INSERT INTO drives(user_id, revision) VALUES (?, 1) " +
      "ON CONFLICT(user_id) DO UPDATE SET revision = revision + 1",
    [userId],
  );
  const row = db
    .query<{ revision: number }, [string]>("SELECT revision FROM drives WHERE user_id = ?")
    .get(userId);
  return row?.revision ?? 0;
}

export function driveRevision(db: Database, userId: string): number {
  const row = db
    .query<{ revision: number }, [string]>("SELECT revision FROM drives WHERE user_id = ?")
    .get(userId);
  return row?.revision ?? 0;
}
