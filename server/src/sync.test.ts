import { beforeEach, describe, expect, test } from "bun:test";
import { Database } from "bun:sqlite";

import { createUser, login, sessionFor } from "./auth";
import { openDatabase } from "./db";
import { deleteDocument, driveDelta, getDocument, putDocument } from "./sync";

let db: Database;
let userId: string;

beforeEach(async () => {
  db = openDatabase(":memory:");
  const user = await createUser(db, "u1", "password123", "テスト");
  userId = user.id;
});

describe("accounts", () => {
  test("a correct password logs in", async () => {
    const session = await login(db, "u1", "password123");
    expect(session).not.toBeNull();
    expect(session!.user.loginId).toBe("u1");
  });

  test("a wrong password does not", async () => {
    expect(await login(db, "u1", "wrong")).toBeNull();
  });

  test("an unknown user does not, and does not reveal that it is unknown", async () => {
    expect(await login(db, "nobody", "password123")).toBeNull();
  });

  test("a duplicate login id is refused", async () => {
    await expect(createUser(db, "u1", "another", "別人")).rejects.toThrow();
  });

  test("the password is not stored in the clear", () => {
    const row = db
      .query<{ password_hash: string }, [string]>(
        "SELECT password_hash FROM users WHERE login_id = ?",
      )
      .get("u1");
    expect(row!.password_hash).not.toContain("password123");
    expect(row!.password_hash.startsWith("$argon2")).toBe(true);
  });

  test("a session resolves back to its user, and a bad token does not", async () => {
    const session = await login(db, "u1", "password123");
    expect(sessionFor(db, session!.token)?.user.id).toBe(userId);
    expect(sessionFor(db, "not-a-token")).toBeNull();
    expect(sessionFor(db, null)).toBeNull();
  });
});

describe("document writes", () => {
  test("a new document starts at revision 1", () => {
    const out = putDocument(db, userId, "d1", "タイトル", "{}", null);
    expect(out.status).toBe("ok");
    if (out.status !== "ok") return;
    expect(out.meta.revision).toBe(1);
  });

  test("a matching check advances the revision", () => {
    putDocument(db, userId, "d1", "a", "{}", null);
    const out = putDocument(db, userId, "d1", "b", "{}", 1);
    expect(out.status).toBe("ok");
    if (out.status !== "ok") return;
    expect(out.meta.revision).toBe(2);
  });

  test("a stale check is refused and returns the server's state", () => {
    putDocument(db, userId, "d1", "a", '{"v":1}', null);
    putDocument(db, userId, "d1", "b", '{"v":2}', 1);

    // A second device still believes revision 1 is current.
    const out = putDocument(db, userId, "d1", "conflicting", '{"v":99}', 1);
    expect(out.status).toBe("conflict");
    if (out.status !== "conflict") return;

    // The server's version comes back with the refusal so the client can
    // resolve in one round trip: server wins, the client keeps its own copy
    // as a duplicate (docs/12 §4).
    expect(out.server.revision).toBe(2);
    expect(out.serverData).toBe('{"v":2}');

    // And the refused write really did not land.
    expect(getDocument(db, userId, "d1")!.data).toBe('{"v":2}');
  });

  test("creating a document that already exists is a conflict", () => {
    putDocument(db, userId, "d1", "a", "{}", null);
    // Two devices created the same note while offline.
    const out = putDocument(db, userId, "d1", "b", "{}", null);
    expect(out.status).toBe("conflict");
  });

  test("writing to a document the client thinks exists but does not is a conflict", () => {
    const out = putDocument(db, userId, "ghost", "a", "{}", 5);
    expect(out.status).toBe("conflict");
    if (out.status !== "conflict") return;
    expect(out.server.deleted).toBe(true);
  });

  test("documents are per user", async () => {
    const other = await createUser(db, "u2", "password123", "別の人");
    putDocument(db, userId, "d1", "mine", "{}", null);
    expect(getDocument(db, other.id, "d1")).toBeNull();
  });
});

describe("delta sync", () => {
  test("returns only what changed after the given revision", () => {
    putDocument(db, userId, "d1", "a", "{}", null);
    const afterFirst = driveDelta(db, userId, 0).driveRevision;
    putDocument(db, userId, "d2", "b", "{}", null);

    const all = driveDelta(db, userId, 0);
    expect(all.documents.map((d) => d.id).sort()).toEqual(["d1", "d2"]);

    const since = driveDelta(db, userId, afterFirst);
    expect(since.documents.map((d) => d.id)).toEqual(["d2"]);
  });

  test("is empty once the client is up to date", () => {
    putDocument(db, userId, "d1", "a", "{}", null);
    const current = driveDelta(db, userId, 0).driveRevision;
    expect(driveDelta(db, userId, current).documents).toEqual([]);
  });

  test("orders by drive revision, so replay order matches write order", () => {
    putDocument(db, userId, "d1", "a", "{}", null);
    putDocument(db, userId, "d2", "b", "{}", null);
    putDocument(db, userId, "d1", "a2", "{}", 1);

    const ids = driveDelta(db, userId, 0).documents.map((d) => d.id);
    // d1 was written most recently, so it sorts last.
    expect(ids).toEqual(["d2", "d1"]);
  });
});

describe("deletion", () => {
  test("leaves a tombstone rather than removing the row", () => {
    putDocument(db, userId, "d1", "a", "{}", null);
    const meta = deleteDocument(db, userId, "d1");

    expect(meta!.deleted).toBe(true);
    // A client that was offline has to learn the document went away; a missing
    // row is indistinguishable from one it has simply never seen.
    const delta = driveDelta(db, userId, 0);
    expect(delta.documents).toHaveLength(1);
    expect(delta.documents[0].deleted).toBe(true);
  });

  test("clears the content", () => {
    putDocument(db, userId, "d1", "a", '{"big":"payload"}', null);
    deleteDocument(db, userId, "d1");
    expect(getDocument(db, userId, "d1")!.data).toBeNull();
  });

  test("deleting something absent reports so", () => {
    expect(deleteDocument(db, userId, "nope")).toBeNull();
  });
});
