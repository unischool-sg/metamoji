/**
 * Reference backend for cloud sync (scope B) and classroom collaboration
 * (scope C).
 *
 * docs/03 §2 is explicit that MetaMoJi's own servers cannot be used, so both
 * features presuppose a backend of one's own. This is that backend, written to
 * be readable rather than to scale: SQLite, one process, no clustering.
 *
 * The endpoint shapes follow docs/06 — a REST surface for room brokering and
 * document sync, then a dedicated realtime connection whose address the REST
 * side hands out. The proprietary text protocol is replaced by JSON, exactly as
 * docs/06 §7 recommends.
 */

import type { ServerWebSocket } from "bun";

import { bearerToken, createUser, login, logout, sessionFor, type Session } from "./auth";
import {
  Relay,
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
  roomById,
  roomByCode,
  roomsFor,
  setLocked,
  setPresence,
  type SocketData,
} from "./classroom";
import { openDatabase } from "./db";
import { deleteDocument, driveDelta, getDocument, putDocument } from "./sync";

const PORT = Number(process.env.PORT ?? 8787);
const DB_PATH = process.env.METAMOJI_DB ?? "metamoji-server.sqlite";

const db = openDatabase(DB_PATH);
migrateClassroom(db);
const relay = new Relay();

function json(body: unknown, status = 200): Response {
  return new Response(JSON.stringify(body), {
    status,
    headers: {
      "content-type": "application/json; charset=utf-8",
      // The desktop client is not a browser origin, but the dev build runs in
      // one, so CORS has to be permissive enough for `vite dev` to reach it.
      "access-control-allow-origin": "*",
      "access-control-allow-headers": "authorization, content-type",
      "access-control-allow-methods": "GET, POST, PUT, DELETE, OPTIONS",
    },
  });
}

const error = (message: string, status: number) => json({ error: message }, status);

function requireSession(request: Request): Session | Response {
  const session = sessionFor(db, bearerToken(request));
  return session ?? error("認証が必要です", 401);
}

async function body<T>(request: Request): Promise<T | null> {
  try {
    return (await request.json()) as T;
  } catch {
    return null;
  }
}

const server = Bun.serve<SocketData, undefined>({
  port: PORT,

  async fetch(request, server) {
    const url = new URL(request.url);
    const path = url.pathname;

    if (request.method === "OPTIONS") return json({}, 204);

    // -- health ------------------------------------------------------------
    if (path === "/health") return json({ ok: true });

    // -- accounts ----------------------------------------------------------
    if (path === "/auth/register" && request.method === "POST") {
      const input = await body<{ loginId: string; password: string; displayName: string }>(request);
      if (!input?.loginId || !input.password) return error("入力が不足しています", 400);
      try {
        const user = await createUser(db, input.loginId, input.password, input.displayName || input.loginId);
        return json({ user });
      } catch (err) {
        return error(String(err instanceof Error ? err.message : err), 409);
      }
    }

    if (path === "/auth/login" && request.method === "POST") {
      const input = await body<{ loginId: string; password: string }>(request);
      if (!input?.loginId || !input.password) return error("入力が不足しています", 400);
      const session = await login(db, input.loginId, input.password);
      if (!session) return error("ログイン ID かパスワードが違います", 401);
      return json(session);
    }

    if (path === "/auth/logout" && request.method === "POST") {
      const token = bearerToken(request);
      if (token) logout(db, token);
      return json({ ok: true });
    }

    if (path === "/auth/me") {
      const session = requireSession(request);
      if (session instanceof Response) return session;
      return json({ user: session.user });
    }

    // -- sync --------------------------------------------------------------
    if (path === "/sync/delta") {
      const session = requireSession(request);
      if (session instanceof Response) return session;
      const since = Number(url.searchParams.get("since") ?? 0);
      return json(driveDelta(db, session.user.id, Number.isFinite(since) ? since : 0));
    }

    const docMatch = /^\/sync\/documents\/([^/]+)$/.exec(path);
    if (docMatch) {
      const session = requireSession(request);
      if (session instanceof Response) return session;
      const id = decodeURIComponent(docMatch[1]);

      if (request.method === "GET") {
        const row = getDocument(db, session.user.id, id);
        if (!row || row.deleted) return error("ドキュメントがありません", 404);
        return json({
          id: row.id,
          title: row.title,
          revision: row.revision,
          driveRevision: row.drive_revision,
          updatedAt: row.updated_at,
          data: row.data,
        });
      }

      if (request.method === "PUT") {
        const input = await body<{ title: string; data: string; check: number | null }>(request);
        if (!input || typeof input.data !== "string") return error("入力が不足しています", 400);

        const outcome = putDocument(
          db,
          session.user.id,
          id,
          input.title ?? "",
          input.data,
          input.check ?? null,
        );
        if (outcome.status === "conflict") {
          // 409 with the server's current state, so the client can resolve
          // without a second round trip (docs/12 §4: server wins, the client
          // keeps its own version as a duplicate).
          return json({ conflict: true, server: outcome.server, serverData: outcome.serverData }, 409);
        }
        return json(outcome.meta);
      }

      if (request.method === "DELETE") {
        const meta = deleteDocument(db, session.user.id, id);
        if (!meta) return error("ドキュメントがありません", 404);
        return json(meta);
      }
    }

    // -- classroom ---------------------------------------------------------
    if (path === "/classroom/rooms" && request.method === "GET") {
      const session = requireSession(request);
      if (session instanceof Response) return session;
      return json({ rooms: roomsFor(db, session.user.id) });
    }

    if (path === "/classroom/rooms" && request.method === "POST") {
      const session = requireSession(request);
      if (session instanceof Response) return session;
      const input = await body<{ name: string }>(request);
      const room = createRoom(db, session.user.id, input?.name || "教室");
      addMember(db, room.id, session.user.id, session.user.displayName, "teacher");
      return json({ room });
    }

    if (path === "/classroom/join" && request.method === "POST") {
      const session = requireSession(request);
      if (session instanceof Response) return session;
      const input = await body<{ joinCode: string }>(request);
      if (!input?.joinCode) return error("参加コードが必要です", 400);

      const room = roomByCode(db, input.joinCode.trim());
      if (!room) return error("その参加コードの教室はありません", 404);

      const role = room.ownerId === session.user.id ? "teacher" : "student";
      addMember(db, room.id, session.user.id, session.user.displayName, role);
      return json({ room, role, socketUrl: socketUrlFor(url, room.id) });
    }

    const roomMatch = /^\/classroom\/rooms\/([^/]+)(\/.*)?$/.exec(path);
    if (roomMatch) {
      const session = requireSession(request);
      if (session instanceof Response) return session;

      const roomId = decodeURIComponent(roomMatch[1]);
      const rest = roomMatch[2] ?? "";
      const room = roomById(db, roomId);
      if (!room) return error("教室がありません", 404);

      const role = roleOf(db, roomId, session.user.id);
      if (!role) return error("この教室に参加していません", 403);
      const isTeacher = role === "teacher";

      if (rest === "" && request.method === "GET") {
        return json({
          room,
          role,
          members: members(db, roomId),
          online: relay.connectedUsers(roomId),
          socketUrl: socketUrlFor(url, roomId),
        });
      }

      if (rest === "/directions" && request.method === "GET") {
        const since = Number(url.searchParams.get("since") ?? 0);
        return json({ directions: directionsSince(db, roomId, Number.isFinite(since) ? since : 0) });
      }

      if (rest === "/lock" && request.method === "POST") {
        if (!isTeacher) return error("教師のみ操作できます", 403);
        const input = await body<{ locked: boolean }>(request);
        setLocked(db, roomId, Boolean(input?.locked));
        relay.broadcast(roomId, { type: "room.locked", locked: Boolean(input?.locked) });
        return json({ ok: true, locked: Boolean(input?.locked) });
      }

      if (rest === "/attention" && request.method === "POST") {
        if (!isTeacher) return error("教師のみ操作できます", 403);
        const input = await body<{ userId: string | null }>(request);
        relay.broadcast(roomId, { type: "room.attention", userId: input?.userId ?? null });
        return json({ ok: true });
      }

      if (rest === "/distribute" && request.method === "POST") {
        if (!isTeacher) return error("教師のみ操作できます", 403);
        const input = await body<{ documentId: string; title: string; data: string }>(request);
        if (!input?.data) return error("配信するノートがありません", 400);

        const record = distribute(db, roomId, input.documentId, input.title ?? "", input.data);
        relay.broadcast(roomId, {
          type: "room.distributed",
          distributionId: record.id,
          title: input.title ?? "",
          at: record.at,
        });
        return json({ ok: true, ...record });
      }

      if (rest === "/distributions" && request.method === "GET") {
        return json({ distributions: distributions(db, roomId) });
      }

      if (rest === "/presence" && request.method === "POST") {
        const input = await body<{ pageIndex: number; thumbnail?: string }>(request);
        setPresence(db, roomId, session.user.id, input?.pageIndex ?? 0, input?.thumbnail ?? null);
        return json({ ok: true });
      }

      if (rest === "/presence" && request.method === "GET") {
        if (!isTeacher) return error("教師のみ参照できます", 403);
        return json({ presence: presence(db, roomId), online: relay.connectedUsers(roomId) });
      }
    }

    // -- realtime upgrade --------------------------------------------------
    if (path === "/ws") {
      const token = url.searchParams.get("token");
      const roomId = url.searchParams.get("room");
      const session = sessionFor(db, token);
      if (!session || !roomId) return error("認証が必要です", 401);

      const role = roleOf(db, roomId, session.user.id);
      if (!role) return error("この教室に参加していません", 403);

      const ok = server.upgrade(request, {
        data: {
          roomId,
          userId: session.user.id,
          displayName: session.user.displayName,
          role,
        },
      });
      return ok ? undefined : error("WebSocket に切り替えられません", 400);
    }

    return error("見つかりません", 404);
  },

  websocket: {
    open(socket: ServerWebSocket<SocketData>) {
      relay.join(socket);
      relay.broadcast(socket.data.roomId, {
        type: "member.online",
        userId: socket.data.userId,
        displayName: socket.data.displayName,
      });
    },

    message(socket: ServerWebSocket<SocketData>, raw: string | Buffer) {
      let message: { type?: string; [key: string]: unknown };
      try {
        message = JSON.parse(String(raw));
      } catch {
        socket.send(JSON.stringify({ type: "error", message: "malformed message" }));
        return;
      }

      const { roomId, userId, role } = socket.data;

      switch (message.type) {
        case "direction": {
          const room = roomById(db, roomId);
          // A locked room is read-only for students (docs/02's 締切/ロック).
          if (room?.locked && role !== "teacher") {
            socket.send(
              JSON.stringify({ type: "direction.rejected", editId: message.editId, reason: "locked" }),
            );
            return;
          }

          const { direction, isNew } = appendDirection(
            db,
            roomId,
            String(message.editId ?? crypto.randomUUID()),
            userId,
            String(message.documentId ?? ""),
            message.payload,
          );

          // Ack first, so the sender can retire it from its resend queue even
          // if the broadcast to others fails.
          socket.send(
            JSON.stringify({ type: "direction.ack", editId: direction.editId, seq: direction.seq }),
          );
          // A resend is acked but not relayed again: peers already received it,
          // and one that did not will catch up via `directionsSince`.
          if (isNew) relay.broadcast(roomId, { type: "direction", direction }, socket);
          return;
        }

        case "presence": {
          setPresence(
            db,
            roomId,
            userId,
            Number(message.pageIndex ?? 0),
            typeof message.thumbnail === "string" ? message.thumbnail : null,
          );
          relay.broadcast(
            roomId,
            { type: "presence", userId, pageIndex: Number(message.pageIndex ?? 0) },
            socket,
          );
          return;
        }

        case "ping":
          socket.send(JSON.stringify({ type: "pong" }));
          return;

        default:
          socket.send(JSON.stringify({ type: "error", message: `unknown type: ${message.type}` }));
      }
    },

    close(socket: ServerWebSocket<SocketData>) {
      relay.leave(socket);
      relay.broadcast(socket.data.roomId, { type: "member.offline", userId: socket.data.userId });
    },
  },
});

function socketUrlFor(url: URL, roomId: string): string {
  const protocol = url.protocol === "https:" ? "wss:" : "ws:";
  return `${protocol}//${url.host}/ws?room=${encodeURIComponent(roomId)}`;
}

console.log(`metamoji server listening on http://localhost:${server.port} (db: ${DB_PATH})`);

export { db, relay, server };
