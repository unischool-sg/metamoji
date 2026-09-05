/**
 * Classroom rooms and the realtime relay.
 *
 * docs/06 describes the original's two-stage design — a REST broker hands out
 * the address of a relay, then the client opens a dedicated realtime connection
 * to it — and §7 concludes that shape is sound and worth keeping. It is kept:
 * `POST /classroom/rooms/:id/join` returns the WebSocket URL.
 *
 * What is not kept is the wire format. The original speaks a tab/space/colon
 * delimited text protocol over a raw socket (docs/06 §3); the same information
 * — booth, packet number, command, parameters — is a JSON envelope here.
 *
 * Delivery follows docs/06 §4: ordered, at-least-once, with the client holding
 * a persistent queue until it sees an ack. The server assigns each direction a
 * monotonic sequence number per room so a client returning from offline can ask
 * for everything after the last one it processed.
 */

import type { Database } from "bun:sqlite";
import type { ServerWebSocket } from "bun";

export type RoomRole = "teacher" | "student";

export interface Room {
  id: string;
  name: string;
  joinCode: string;
  ownerId: string;
  /** Locked rooms accept no further edits from students. */
  locked: boolean;
  createdAt: string;
}

export interface Member {
  roomId: string;
  userId: string;
  displayName: string;
  role: RoomRole;
}

/** A single edit, relayed to the room. Mirrors docs/06 §4's Direction. */
export interface Direction {
  seq: number;
  roomId: string;
  /** Client-generated id, so a sender recognises the echo of its own edit. */
  editId: string;
  actorId: string;
  /** The document the edit belongs to. */
  documentId: string;
  /** Opaque payload — the app's CompoundEdit, serialised. */
  payload: unknown;
  at: string;
}

export function migrateClassroom(db: Database): void {
  db.exec(`
    CREATE TABLE IF NOT EXISTS rooms (
      id         TEXT PRIMARY KEY,
      name       TEXT NOT NULL,
      join_code  TEXT NOT NULL UNIQUE,
      owner_id   TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      locked     INTEGER NOT NULL DEFAULT 0,
      created_at TEXT NOT NULL
    );

    CREATE TABLE IF NOT EXISTS room_members (
      room_id      TEXT NOT NULL REFERENCES rooms(id) ON DELETE CASCADE,
      user_id      TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      display_name TEXT NOT NULL,
      role         TEXT NOT NULL,
      PRIMARY KEY (room_id, user_id)
    );

    -- The direction log. Kept per room so a client that was offline can replay
    -- from its last processed sequence number instead of resyncing wholesale.
    CREATE TABLE IF NOT EXISTS directions (
      seq         INTEGER PRIMARY KEY AUTOINCREMENT,
      room_id     TEXT NOT NULL REFERENCES rooms(id) ON DELETE CASCADE,
      edit_id     TEXT NOT NULL,
      actor_id    TEXT NOT NULL,
      document_id TEXT NOT NULL,
      payload     TEXT NOT NULL,
      at          TEXT NOT NULL
    );
    CREATE INDEX IF NOT EXISTS idx_directions_room ON directions(room_id, seq);
    CREATE UNIQUE INDEX IF NOT EXISTS idx_directions_edit ON directions(room_id, edit_id);

    -- Distributed notes: a teacher hands a document to the room, and each
    -- student gets their own copy to work in.
    CREATE TABLE IF NOT EXISTS distributions (
      id          TEXT PRIMARY KEY,
      room_id     TEXT NOT NULL REFERENCES rooms(id) ON DELETE CASCADE,
      document_id TEXT NOT NULL,
      title       TEXT NOT NULL,
      data        TEXT NOT NULL,
      at          TEXT NOT NULL
    );

    -- What each student is currently looking at, for the monitoring grid.
    -- docs/01 §11 notes the original monitors by periodically collecting the
    -- page number and a thumbnail rather than streaming video; same here.
    CREATE TABLE IF NOT EXISTS presence (
      room_id     TEXT NOT NULL,
      user_id     TEXT NOT NULL,
      page_index  INTEGER NOT NULL DEFAULT 0,
      thumbnail   TEXT,
      updated_at  TEXT NOT NULL,
      PRIMARY KEY (room_id, user_id)
    );
  `);
}

function code(): string {
  // Six digits: short enough to read aloud to a class, which is how it is used.
  return String(Math.floor(100000 + Math.random() * 900000));
}

export function createRoom(db: Database, ownerId: string, name: string): Room {
  const id = crypto.randomUUID();
  let joinCode = code();
  // Codes are short, so collisions happen; retry rather than fail the request.
  for (let i = 0; i < 10; i++) {
    const taken = db
      .query<{ id: string }, [string]>("SELECT id FROM rooms WHERE join_code = ?")
      .get(joinCode);
    if (!taken) break;
    joinCode = code();
  }

  const createdAt = new Date().toISOString();
  db.run(
    "INSERT INTO rooms(id, name, join_code, owner_id, locked, created_at) VALUES (?,?,?,?,0,?)",
    [id, name, joinCode, ownerId, createdAt],
  );
  return { id, name, joinCode, ownerId, locked: false, createdAt };
}

function rowToRoom(row: {
  id: string;
  name: string;
  join_code: string;
  owner_id: string;
  locked: number;
  created_at: string;
}): Room {
  return {
    id: row.id,
    name: row.name,
    joinCode: row.join_code,
    ownerId: row.owner_id,
    locked: row.locked !== 0,
    createdAt: row.created_at,
  };
}

export function roomById(db: Database, id: string): Room | null {
  const row = db.query("SELECT * FROM rooms WHERE id = ?").get(id) as never;
  return row ? rowToRoom(row) : null;
}

export function roomByCode(db: Database, joinCode: string): Room | null {
  const row = db.query("SELECT * FROM rooms WHERE join_code = ?").get(joinCode) as never;
  return row ? rowToRoom(row) : null;
}

export function roomsFor(db: Database, userId: string): Room[] {
  const rows = db
    .query(
      `SELECT r.* FROM rooms r
       LEFT JOIN room_members m ON m.room_id = r.id AND m.user_id = ?
       WHERE r.owner_id = ? OR m.user_id IS NOT NULL
       ORDER BY r.created_at DESC`,
    )
    .all(userId, userId) as never[];
  return rows.map(rowToRoom);
}

export function addMember(
  db: Database,
  roomId: string,
  userId: string,
  displayName: string,
  role: RoomRole,
): Member {
  db.run(
    `INSERT INTO room_members(room_id, user_id, display_name, role) VALUES (?,?,?,?)
     ON CONFLICT(room_id, user_id) DO UPDATE SET display_name = excluded.display_name`,
    [roomId, userId, displayName, role],
  );
  return { roomId, userId, displayName, role };
}

export function members(db: Database, roomId: string): Member[] {
  const rows = db
    .query<
      { room_id: string; user_id: string; display_name: string; role: string },
      [string]
    >("SELECT * FROM room_members WHERE room_id = ? ORDER BY display_name")
    .all(roomId);
  return rows.map((r) => ({
    roomId: r.room_id,
    userId: r.user_id,
    displayName: r.display_name,
    role: r.role as RoomRole,
  }));
}

export function roleOf(db: Database, roomId: string, userId: string): RoomRole | null {
  const room = roomById(db, roomId);
  if (room?.ownerId === userId) return "teacher";
  const row = db
    .query<{ role: string }, [string, string]>(
      "SELECT role FROM room_members WHERE room_id = ? AND user_id = ?",
    )
    .get(roomId, userId);
  return (row?.role as RoomRole) ?? null;
}

export function setLocked(db: Database, roomId: string, locked: boolean): void {
  db.run("UPDATE rooms SET locked = ? WHERE id = ?", [locked ? 1 : 0, roomId]);
}

/**
 * Appends a direction, returning it with its assigned sequence number.
 *
 * Re-sending the same `editId` returns the original rather than appending a
 * second copy, and reports `isNew: false`. Delivery is at-least-once (docs/06
 * §4), so a client that missed an ack will resend; the caller uses `isNew` to
 * ack without re-broadcasting, which is the server-side dedup docs/06 §4
 * recommends for exactly-once application. A peer that genuinely missed the
 * first delivery recovers through `directionsSince` instead.
 */
export function appendDirection(
  db: Database,
  roomId: string,
  editId: string,
  actorId: string,
  documentId: string,
  payload: unknown,
): { direction: Direction; isNew: boolean } {
  const existing = db
    .query<{ seq: number; at: string }, [string, string]>(
      "SELECT seq, at FROM directions WHERE room_id = ? AND edit_id = ?",
    )
    .get(roomId, editId);

  if (existing) {
    return {
      direction: { seq: existing.seq, roomId, editId, actorId, documentId, payload, at: existing.at },
      isNew: false,
    };
  }

  const at = new Date().toISOString();
  db.run(
    "INSERT INTO directions(room_id, edit_id, actor_id, document_id, payload, at) VALUES (?,?,?,?,?,?)",
    [roomId, editId, actorId, documentId, JSON.stringify(payload), at],
  );
  const seq = db.query<{ seq: number }, []>("SELECT last_insert_rowid() AS seq").get()!.seq;
  return { direction: { seq, roomId, editId, actorId, documentId, payload, at }, isNew: true };
}

export function directionsSince(db: Database, roomId: string, sinceSeq: number): Direction[] {
  const rows = db
    .query<
      {
        seq: number;
        room_id: string;
        edit_id: string;
        actor_id: string;
        document_id: string;
        payload: string;
        at: string;
      },
      [string, number]
    >("SELECT * FROM directions WHERE room_id = ? AND seq > ? ORDER BY seq ASC")
    .all(roomId, sinceSeq);

  return rows.map((r) => ({
    seq: r.seq,
    roomId: r.room_id,
    editId: r.edit_id,
    actorId: r.actor_id,
    documentId: r.document_id,
    payload: JSON.parse(r.payload) as unknown,
    at: r.at,
  }));
}

export function distribute(
  db: Database,
  roomId: string,
  documentId: string,
  title: string,
  data: string,
): { id: string; at: string } {
  const id = crypto.randomUUID();
  const at = new Date().toISOString();
  db.run(
    "INSERT INTO distributions(id, room_id, document_id, title, data, at) VALUES (?,?,?,?,?,?)",
    [id, roomId, documentId, title, data, at],
  );
  return { id, at };
}

export function distributions(db: Database, roomId: string) {
  return db
    .query<
      { id: string; document_id: string; title: string; data: string; at: string },
      [string]
    >("SELECT id, document_id, title, data, at FROM distributions WHERE room_id = ? ORDER BY at DESC")
    .all(roomId)
    .map((r) => ({ id: r.id, documentId: r.document_id, title: r.title, data: r.data, at: r.at }));
}

export function setPresence(
  db: Database,
  roomId: string,
  userId: string,
  pageIndex: number,
  thumbnail: string | null,
): void {
  db.run(
    `INSERT INTO presence(room_id, user_id, page_index, thumbnail, updated_at) VALUES (?,?,?,?,?)
     ON CONFLICT(room_id, user_id) DO UPDATE SET
       page_index = excluded.page_index,
       thumbnail = COALESCE(excluded.thumbnail, presence.thumbnail),
       updated_at = excluded.updated_at`,
    [roomId, userId, pageIndex, thumbnail, new Date().toISOString()],
  );
}

export function presence(db: Database, roomId: string) {
  return db
    .query<
      { user_id: string; page_index: number; thumbnail: string | null; updated_at: string },
      [string]
    >("SELECT user_id, page_index, thumbnail, updated_at FROM presence WHERE room_id = ?")
    .all(roomId)
    .map((r) => ({
      userId: r.user_id,
      pageIndex: r.page_index,
      thumbnail: r.thumbnail,
      updatedAt: r.updated_at,
    }));
}

// ---------------------------------------------------------------------------
// Relay
// ---------------------------------------------------------------------------

export interface SocketData {
  roomId: string;
  userId: string;
  displayName: string;
  role: RoomRole;
}

/**
 * Live connections, grouped by room.
 *
 * Bun's pub/sub would do most of this, but keeping the set explicit lets the
 * teacher-control messages address a single student — which is what "attention"
 * and per-student locking need.
 */
export class Relay {
  private rooms = new Map<string, Set<ServerWebSocket<SocketData>>>();

  join(socket: ServerWebSocket<SocketData>): void {
    const set = this.rooms.get(socket.data.roomId) ?? new Set();
    set.add(socket);
    this.rooms.set(socket.data.roomId, set);
  }

  leave(socket: ServerWebSocket<SocketData>): void {
    const set = this.rooms.get(socket.data.roomId);
    if (!set) return;
    set.delete(socket);
    if (set.size === 0) this.rooms.delete(socket.data.roomId);
  }

  /** Sends to everyone in the room except `exclude`, if given. */
  broadcast(roomId: string, message: unknown, exclude?: ServerWebSocket<SocketData>): void {
    const set = this.rooms.get(roomId);
    if (!set) return;
    const text = JSON.stringify(message);
    for (const socket of set) {
      if (socket === exclude) continue;
      socket.send(text);
    }
  }

  sendTo(roomId: string, userId: string, message: unknown): void {
    const set = this.rooms.get(roomId);
    if (!set) return;
    const text = JSON.stringify(message);
    for (const socket of set) {
      if (socket.data.userId === userId) socket.send(text);
    }
  }

  connectedUsers(roomId: string): string[] {
    return [...(this.rooms.get(roomId) ?? [])].map((s) => s.data.userId);
  }
}
