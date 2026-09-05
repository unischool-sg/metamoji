import { beforeEach, describe, expect, test } from "bun:test";
import { Database } from "bun:sqlite";

import { createUser } from "./auth";
import {
  addMember,
  appendDirection,
  createRoom,
  directionsSince,
  distribute,
  distributions,
  members,
  migrateClassroom,
  presence,
  roleOf,
  roomByCode,
  roomsFor,
  setLocked,
  setPresence,
} from "./classroom";
import { openDatabase } from "./db";

let db: Database;
let teacherId: string;
let studentId: string;

beforeEach(async () => {
  db = openDatabase(":memory:");
  migrateClassroom(db);
  teacherId = (await createUser(db, "teacher", "password123", "先生")).id;
  studentId = (await createUser(db, "student", "password123", "生徒")).id;
});

describe("rooms", () => {
  test("a new room gets a six-digit join code", () => {
    const room = createRoom(db, teacherId, "数学");
    expect(room.joinCode).toMatch(/^\d{6}$/);
    expect(room.locked).toBe(false);
  });

  test("a room is findable by its code", () => {
    const room = createRoom(db, teacherId, "数学");
    expect(roomByCode(db, room.joinCode)?.id).toBe(room.id);
    expect(roomByCode(db, "000000")).toBeNull();
  });

  test("the owner is a teacher even before joining", () => {
    const room = createRoom(db, teacherId, "数学");
    expect(roleOf(db, room.id, teacherId)).toBe("teacher");
  });

  test("a non-member has no role", () => {
    const room = createRoom(db, teacherId, "数学");
    expect(roleOf(db, room.id, studentId)).toBeNull();
  });

  test("joining as a student grants the student role", () => {
    const room = createRoom(db, teacherId, "数学");
    addMember(db, room.id, studentId, "生徒", "student");
    expect(roleOf(db, room.id, studentId)).toBe("student");
    expect(members(db, room.id)).toHaveLength(1);
  });

  test("joining twice updates rather than duplicating", () => {
    const room = createRoom(db, teacherId, "数学");
    addMember(db, room.id, studentId, "生徒", "student");
    addMember(db, room.id, studentId, "生徒A", "student");

    const list = members(db, room.id);
    expect(list).toHaveLength(1);
    expect(list[0].displayName).toBe("生徒A");
  });

  test("a user's rooms include both owned and joined ones", () => {
    const owned = createRoom(db, teacherId, "自分の教室");
    const other = createRoom(db, studentId, "他人の教室");
    addMember(db, other.id, teacherId, "先生", "student");

    const ids = roomsFor(db, teacherId).map((r) => r.id).sort();
    expect(ids).toEqual([owned.id, other.id].sort());
  });
});

describe("directions", () => {
  test("each gets a monotonic sequence number", () => {
    const room = createRoom(db, teacherId, "数学");
    const a = appendDirection(db, room.id, "e1", teacherId, "d1", { op: 1 });
    const b = appendDirection(db, room.id, "e2", teacherId, "d1", { op: 2 });

    expect(a.isNew).toBe(true);
    expect(b.direction.seq).toBeGreaterThan(a.direction.seq);
  });

  test("a resend returns the original and reports it is not new", () => {
    const room = createRoom(db, teacherId, "数学");
    const first = appendDirection(db, room.id, "e1", teacherId, "d1", { op: 1 });
    // At-least-once delivery: a client that missed the ack will resend.
    const again = appendDirection(db, room.id, "e1", teacherId, "d1", { op: 1 });

    expect(again.isNew).toBe(false);
    expect(again.direction.seq).toBe(first.direction.seq);
    expect(directionsSince(db, room.id, 0)).toHaveLength(1);
  });

  test("the same edit id in a different room is a different direction", () => {
    const a = createRoom(db, teacherId, "A");
    const b = createRoom(db, teacherId, "B");
    appendDirection(db, a.id, "e1", teacherId, "d1", {});
    const second = appendDirection(db, b.id, "e1", teacherId, "d1", {});
    expect(second.isNew).toBe(true);
  });

  test("replays everything after a sequence number, in order", () => {
    const room = createRoom(db, teacherId, "数学");
    appendDirection(db, room.id, "e1", teacherId, "d1", { op: 1 });
    const second = appendDirection(db, room.id, "e2", teacherId, "d1", { op: 2 });
    appendDirection(db, room.id, "e3", teacherId, "d1", { op: 3 });

    const after = directionsSince(db, room.id, second.direction.seq);
    expect(after.map((d) => d.editId)).toEqual(["e3"]);

    const all = directionsSince(db, room.id, 0);
    expect(all.map((d) => d.editId)).toEqual(["e1", "e2", "e3"]);
  });

  test("the payload round-trips intact", () => {
    const room = createRoom(db, teacherId, "数学");
    const payload = { label: "ペン", children: [{ kind: "stroke.add", index: 0 }] };
    appendDirection(db, room.id, "e1", teacherId, "d1", payload);

    expect(directionsSince(db, room.id, 0)[0].payload).toEqual(payload);
  });
});

describe("teacher controls", () => {
  test("locking is recorded on the room", () => {
    const room = createRoom(db, teacherId, "数学");
    setLocked(db, room.id, true);
    expect(roomByCode(db, room.joinCode)!.locked).toBe(true);
  });

  test("a distributed note is retrievable by the room", () => {
    const room = createRoom(db, teacherId, "数学");
    distribute(db, room.id, "doc_1", "配布プリント", '{"rootId":"doc_1"}');

    const list = distributions(db, room.id);
    expect(list).toHaveLength(1);
    expect(list[0].title).toBe("配布プリント");
    expect(list[0].data).toBe('{"rootId":"doc_1"}');
  });
});

describe("presence", () => {
  test("records the page each member is on", () => {
    const room = createRoom(db, teacherId, "数学");
    setPresence(db, room.id, studentId, 3, "data:image/png;base64,AA");

    const list = presence(db, room.id);
    expect(list).toHaveLength(1);
    expect(list[0].pageIndex).toBe(3);
    expect(list[0].thumbnail).toBe("data:image/png;base64,AA");
  });

  test("keeps the last thumbnail when an update omits one", () => {
    const room = createRoom(db, teacherId, "数学");
    setPresence(db, room.id, studentId, 1, "data:image/png;base64,AA");
    // Page turns are frequent; thumbnails are not sent every time.
    setPresence(db, room.id, studentId, 2, null);

    const list = presence(db, room.id);
    expect(list[0].pageIndex).toBe(2);
    expect(list[0].thumbnail).toBe("data:image/png;base64,AA");
  });
});
