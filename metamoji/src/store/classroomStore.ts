/**
 * Classroom state.
 *
 * Two things the UI treats as one: a **class box** (a shared drive with a join
 * code) and a **room** inside it (the live session). Entering a room opens a
 * relay socket that Rust owns; its pushes arrive as events, not replies, so
 * this store is the subscriber.
 *
 * **Edits do not flow yet.** A Direction's payload is a serialised `direction`
 * model in the same `IModel` format as `.atdoc`
 * (`docs/typespec/classroom/collabo-socket-protocol.md` §6.1), and this build
 * reads that format but cannot write it. So the room is real — presence, roles,
 * lock, messages all work — and strokes stay local. `receivedDirections`
 * counts what arrives so the gap is visible rather than silent.
 */

import { create } from "zustand";

import * as api from "../ipc/api";
import type { ClassBox, ClassroomEvent, CollaboMember, RelayInfo } from "../ipc/api";

export type Connection = "offline" | "connecting" | "online";

export interface ClassroomMember extends CollaboMember {
  online: boolean;
}

interface ClassroomState {
  box: ClassBox | null;
  roomId: string | null;
  roomTitle: string | null;
  relay: RelayInfo | null;
  connection: Connection;
  /** Roles the relay granted *us*: `presenter`, `speaker`, … */
  roles: string[];
  members: ClassroomMember[];
  /** Booth ids the relay says have new data. */
  updatedBooths: string[];
  /** Directions received but not applied — see the file comment. */
  receivedDirections: number;
  notice: string | null;
  error: string | null;
  busy: boolean;

  createBox: (name: string) => Promise<ClassBox | null>;
  joinBox: (joinCode: string) => Promise<ClassBox | null>;
  refreshCode: (regenerate: boolean) => Promise<void>;
  setJoinEnabled: (enabled: boolean) => Promise<void>;
  enterRoom: (title: string, nickname: string) => Promise<boolean>;
  joinRoom: (roomId: string, nickname: string) => Promise<boolean>;
  leaveRoom: () => Promise<void>;
  refreshMembers: () => Promise<void>;
  clearNotice: () => void;
  clearError: () => void;
  /** Called once at startup; returns the unsubscribe. */
  subscribe: () => Promise<() => void>;
}

/** `presenter`/`speaker` mean we may write; a plain visitor may not. */
export function canEdit(roles: string[]): boolean {
  return roles.includes("presenter") || roles.includes("speaker");
}

export const useClassroomStore = create<ClassroomState>((set, get) => ({
  box: null,
  roomId: null,
  roomTitle: null,
  relay: null,
  connection: "offline",
  roles: [],
  members: [],
  updatedBooths: [],
  receivedDirections: 0,
  notice: null,
  error: null,
  busy: false,

  createBox: async (name) => {
    set({ busy: true, error: null });
    try {
      const box = await api.classroomCreateBox(name);
      set({ box, busy: false });
      return box;
    } catch (err) {
      set({ busy: false, error: message(err) });
      return null;
    }
  },

  joinBox: async (joinCode) => {
    set({ busy: true, error: null });
    try {
      const box = await api.classroomJoinBox(joinCode);
      set({ box, busy: false });
      return box;
    } catch (err) {
      set({ busy: false, error: message(err) });
      return null;
    }
  },

  refreshCode: async (regenerate) => {
    const box = get().box;
    if (!box) return;
    try {
      const next = await api.classroomBoxCode(box.driveId, regenerate);
      // The code call returns only the code, so merge rather than replace —
      // otherwise regenerating would blank the name.
      set({ box: { ...box, joinCode: next.joinCode, joinEnabled: next.joinEnabled } });
    } catch (err) {
      set({ error: message(err) });
    }
  },

  setJoinEnabled: async (enabled) => {
    const box = get().box;
    if (!box) return;
    try {
      await api.classroomUpdateBox(box.driveId, null, enabled);
      set({ box: { ...box, joinEnabled: enabled } });
    } catch (err) {
      set({ error: message(err) });
    }
  },

  enterRoom: async (title, nickname) => {
    const box = get().box;
    if (!box) {
      set({ error: "先に教室を作るか参加してください" });
      return false;
    }
    set({ busy: true, error: null, connection: "connecting" });
    try {
      const room = await api.classroomCreateRoom(title);
      const relay = await api.classroomEnter(room.roomId, box.driveId, nickname);
      set({
        roomId: room.roomId,
        roomTitle: title,
        relay,
        busy: false,
      });
      void get().refreshMembers();
      return true;
    } catch (err) {
      set({ busy: false, connection: "offline", error: message(err) });
      return false;
    }
  },

  joinRoom: async (roomId, nickname) => {
    const box = get().box;
    if (!box) {
      set({ error: "先に教室を作るか参加してください" });
      return false;
    }
    set({ busy: true, error: null, connection: "connecting" });
    try {
      const relay = await api.classroomEnter(roomId, box.driveId, nickname);
      set({ roomId, relay, busy: false });
      void get().refreshMembers();
      return true;
    } catch (err) {
      set({ busy: false, connection: "offline", error: message(err) });
      return false;
    }
  },

  leaveRoom: async () => {
    await api.classroomLeave();
    set({
      roomId: null,
      roomTitle: null,
      relay: null,
      connection: "offline",
      roles: [],
      members: [],
      updatedBooths: [],
      receivedDirections: 0,
    });
  },

  refreshMembers: async () => {
    const roomId = get().roomId;
    if (!roomId) return;
    try {
      const members = await api.classroomMembers(roomId);
      // The roster call says who belongs to the room; the socket says who is
      // here now. Merge rather than overwrite, or a refresh would mark
      // everyone offline until the next join event.
      const online = new Set(get().members.filter((m) => m.online).map((m) => m.userId));
      set({ members: members.map((m) => ({ ...m, online: online.has(m.userId) })) });
    } catch (err) {
      set({ error: message(err) });
    }
  },

  clearNotice: () => set({ notice: null }),
  clearError: () => set({ error: null }),

  subscribe: async () =>
    api.onClassroomEvent((event) => {
      set((state) => reduce(state, event));
    }),
}));

/**
 * Folds one relay event into the store.
 *
 * Split out and pure so the mapping can be tested without a socket — which is
 * the only way to test it, since the relay is not something a test can stand up.
 */
export function reduce(
  state: ClassroomState,
  event: ClassroomEvent,
): Partial<ClassroomState> {
  switch (event.kind) {
    case "connected":
      return { connection: "connecting" };

    case "loggedIn":
      // Connected is not the same as admitted: the socket is up either way,
      // and only this tells us whether we are in the room.
      return event.ok
        ? { connection: "online", roles: event.roles, error: null }
        : {
            connection: "offline",
            error: event.message ?? "教室に参加できませんでした",
          };

    case "roomUpdated": {
      if (event.key !== "user" || !event.userId) return {};
      if (event.value === "login") {
        const known = state.members.some((m) => m.userId === event.userId);
        return {
          members: known
            ? state.members.map((m) =>
                m.userId === event.userId ? { ...m, online: true } : m,
              )
            : [...state.members, { userId: event.userId, name: null, role: null, online: true }],
        };
      }
      if (event.value === "logout") {
        return {
          members: state.members.map((m) =>
            m.userId === event.userId ? { ...m, online: false } : m,
          ),
        };
      }
      return {};
    }

    case "roleChanged": {
      // Self-scoped: the relay sends no `uid`, so this is always about us.
      const roles = new Set(state.roles);
      if (event.enabled) roles.add(event.key);
      else roles.delete(event.key);
      return { roles: [...roles] };
    }

    case "boothUpdated":
      return state.updatedBooths.includes(event.boothId)
        ? {}
        : { updatedBooths: [...state.updatedBooths, event.boothId] };

    case "direction":
      // Counted, not applied — the payload is a model this build cannot read
      // back. Showing the count keeps the gap honest.
      return event.ownEcho
        ? {}
        : { receivedDirections: state.receivedDirections + 1 };

    case "message":
      return { notice: decodeBase64(event.body) };

    case "finished":
      return { connection: "offline", notice: "授業が終了しました" };

    case "disconnected":
      return { connection: "offline", error: event.reason };

    // `modeChanged`, `postAck` and `settingChanged` carry nothing this screen
    // shows yet; ignoring them beats inventing UI for them.
    default:
      return {};
  }
}

/** Relay messages arrive base64-encoded (§5). */
export function decodeBase64(value: string): string {
  try {
    return new TextDecoder().decode(
      Uint8Array.from(atob(value), (c) => c.charCodeAt(0)),
    );
  } catch {
    // Not base64 after all — showing the raw text beats showing nothing.
    return value;
  }
}

function message(err: unknown): string {
  return err instanceof Error ? err.message : String(err);
}
