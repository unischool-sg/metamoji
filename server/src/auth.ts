/**
 * Accounts and sessions.
 *
 * docs/14 §1 catalogues five login drivers in the original (normal, simple,
 * Google, SSO, external). This server implements the normal one and leaves the
 * shape for the rest: the client's `LoginStrategy` trait is what varies, and
 * every strategy ends at the same place — a session token.
 *
 * Passwords are hashed with Bun's argon2id. Storing them any other way would be
 * indefensible even in a reference implementation, because reference
 * implementations get copied.
 */

import type { Database } from "bun:sqlite";

const SESSION_DAYS = 30;

export interface User {
  id: string;
  loginId: string;
  displayName: string;
}

export interface Session {
  token: string;
  user: User;
}

function nowIso(): string {
  return new Date().toISOString();
}

function expiryIso(): string {
  return new Date(Date.now() + SESSION_DAYS * 24 * 60 * 60 * 1000).toISOString();
}

export async function createUser(
  db: Database,
  loginId: string,
  password: string,
  displayName: string,
): Promise<User> {
  const existing = db
    .query<{ id: string }, [string]>("SELECT id FROM users WHERE login_id = ?")
    .get(loginId);
  if (existing) throw new Error("that login id is already taken");

  const id = crypto.randomUUID();
  const hash = await Bun.password.hash(password, { algorithm: "argon2id" });
  db.run(
    "INSERT INTO users(id, login_id, display_name, password_hash, created_at) VALUES (?,?,?,?,?)",
    [id, loginId, displayName, hash, nowIso()],
  );
  db.run("INSERT OR IGNORE INTO drives(user_id, revision) VALUES (?, 0)", [id]);
  return { id, loginId, displayName };
}

export async function login(
  db: Database,
  loginId: string,
  password: string,
): Promise<Session | null> {
  const row = db
    .query<
      { id: string; login_id: string; display_name: string; password_hash: string },
      [string]
    >("SELECT id, login_id, display_name, password_hash FROM users WHERE login_id = ?")
    .get(loginId);

  // Verify against a dummy hash when the user does not exist, so a missing
  // account and a wrong password take the same time to answer.
  const hash = row?.password_hash ?? "$argon2id$v=19$m=65536,t=2,p=1$AAAAAAAAAAA$AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
  const ok = await Bun.password.verify(password, hash).catch(() => false);
  if (!row || !ok) return null;

  const token = crypto.randomUUID().replaceAll("-", "");
  db.run("INSERT INTO sessions(token, user_id, created_at, expires_at) VALUES (?,?,?,?)", [
    token,
    row.id,
    nowIso(),
    expiryIso(),
  ]);
  return {
    token,
    user: { id: row.id, loginId: row.login_id, displayName: row.display_name },
  };
}

export function logout(db: Database, token: string): void {
  db.run("DELETE FROM sessions WHERE token = ?", [token]);
}

export function sessionFor(db: Database, token: string | null): Session | null {
  if (!token) return null;
  const row = db
    .query<
      { token: string; expires_at: string; id: string; login_id: string; display_name: string },
      [string]
    >(
      `SELECT s.token, s.expires_at, u.id, u.login_id, u.display_name
       FROM sessions s JOIN users u ON u.id = s.user_id
       WHERE s.token = ?`,
    )
    .get(token);
  if (!row) return null;

  if (new Date(row.expires_at).getTime() < Date.now()) {
    db.run("DELETE FROM sessions WHERE token = ?", [token]);
    return null;
  }

  return {
    token: row.token,
    user: { id: row.id, loginId: row.login_id, displayName: row.display_name },
  };
}

/** Reads the bearer token from an Authorization header. */
export function bearerToken(request: Request): string | null {
  const header = request.headers.get("authorization");
  if (!header?.toLowerCase().startsWith("bearer ")) return null;
  return header.slice(7).trim() || null;
}
