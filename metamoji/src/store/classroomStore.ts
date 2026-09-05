/**
 * Classroom state.
 *
 * Holds the live session and the room's roster, lock state and monitoring
 * data. The session itself is not React state — it is a long-lived object with
 * a socket — so it lives here behind the store rather than in a component.
 */

import { create } from "zustand";

import { attachClassroomBridge, detachClassroomBridge } from "../classroom/bridge";
import { ClassroomSession, type ConnectionState } from "../classroom/session";
import { applyCompound, type CompoundEdit } from "../editor/delta";
import { beginOfflineEditing, mergeOfflineEditing } from "../editor/offline";
import type { Member, PresenceEntry, RelayDirection, Room, RoomRole } from "../sync/client";
import { useAuthStore } from "./authStore";
import { useEditorStore } from "./editorStore";

export interface MonitorEntry extends PresenceEntry {
  displayName: string;
  online: boolean;
}

interface ClassroomState {
  room: Room | null;
  role: RoomRole | null;
  members: Member[];
  online: Set<string>;
  presence: Record<string, PresenceEntry>;
  session: ClassroomSession | null;
  connection: ConnectionState;
  /** The student the teacher has asked everyone to look at, if any. */
  attention: string | null;
  pendingCount: number;
  lastNotice: string | null;

  enter: (roomId: string) => Promise<void>;
  leave: () => void;
  setLocked: (locked: boolean) => Promise<void>;
  setAttention: (userId: string | null) => Promise<void>;
  refreshPresence: () => Promise<void>;
  clearNotice: () => void;
  monitorEntries: () => MonitorEntry[];
}

export const useClassroomStore = create<ClassroomState>((set, get) => ({
  room: null,
  role: null,
  members: [],
  online: new Set(),
  presence: {},
  session: null,
  connection: "offline",
  attention: null,
  pendingCount: 0,
  lastNotice: null,

  enter: async (roomId) => {
    const client = useAuthStore.getState().client;
    const detail = await client.room(roomId);

    get().session?.disconnect();

    const session = new ClassroomSession(roomId, client.socketUrl(roomId), {
      onState: (connection) => {
        set({ connection, pendingCount: get().session?.pendingCount ?? 0 });
        // docs/14 §2: work done while disconnected goes into an isolated layer,
        // which is merged back when the connection returns. Isolating it is what
        // makes a conflict impossible rather than merely resolvable.
        if (connection === "offline") enterOfflineEditing();
        else if (connection === "online") leaveOfflineEditing();
      },

      onDirection: (direction) => applyRemoteDirection(direction),

      onMemberOnline: (userId) =>
        set((s) => ({ online: new Set(s.online).add(userId) })),

      onMemberOffline: (userId) =>
        set((s) => {
          const next = new Set(s.online);
          next.delete(userId);
          return { online: next };
        }),

      onLocked: (locked) =>
        set((s) => ({
          room: s.room ? { ...s.room, locked } : s.room,
          lastNotice: locked ? "教室がロックされました" : "教室のロックが解除されました",
        })),

      onAttention: (userId) =>
        set({
          attention: userId,
          lastNotice: userId ? "先生が注目を求めています" : null,
        }),

      onDistributed: (_id, title) =>
        set({ lastNotice: `「${title}」が配信されました` }),

      onPresence: (userId, pageIndex) =>
        set((s) => ({
          presence: {
            ...s.presence,
            [userId]: {
              userId,
              pageIndex,
              thumbnail: s.presence[userId]?.thumbnail ?? null,
              updatedAt: new Date().toISOString(),
            },
          },
        })),

      onRejected: (_editId, reason) =>
        set({
          lastNotice:
            reason === "locked"
              ? "教室がロックされているため編集できません"
              : "編集がサーバーに拒否されました",
        }),
    });

    session.connect();
    // Forwarding follows the room, not any screen. Tying it to the classroom
    // screen's lifetime would stop the broadcast the moment the user navigated
    // to a note — which is the only place edits actually happen.
    attachClassroomBridge();
    set({
      room: detail.room,
      role: detail.role,
      members: detail.members,
      online: new Set(detail.online),
      session,
      attention: null,
      lastNotice: null,
    });

    // Catch up on anything that happened while this client was away, before
    // the socket's live stream takes over (docs/06 §4's resume-by-sequence).
    try {
      const { directions } = await client.directionsSince(roomId, session.sequence);
      for (const direction of directions) {
        applyRemoteDirection(direction);
        session.markApplied(direction.seq);
      }
    } catch {
      // A failed catch-up is not fatal; the live stream still works and the
      // next entry will try again.
    }
  },

  leave: () => {
    detachClassroomBridge();
    get().session?.disconnect();
    set({
      room: null,
      role: null,
      members: [],
      online: new Set(),
      presence: {},
      session: null,
      connection: "offline",
      attention: null,
      pendingCount: 0,
    });
  },

  setLocked: async (locked) => {
    const room = get().room;
    if (!room) return;
    await useAuthStore.getState().client.setLocked(room.id, locked);
    set({ room: { ...room, locked } });
  },

  setAttention: async (userId) => {
    const room = get().room;
    if (!room) return;
    await useAuthStore.getState().client.setAttention(room.id, userId);
    set({ attention: userId });
  },

  refreshPresence: async () => {
    const room = get().room;
    if (!room || get().role !== "teacher") return;
    const result = await useAuthStore.getState().client.presence(room.id);
    set({
      presence: Object.fromEntries(result.presence.map((p) => [p.userId, p])),
      online: new Set(result.online),
    });
  },

  clearNotice: () => set({ lastNotice: null }),

  monitorEntries: () => {
    const { members, presence, online } = get();
    return members
      .filter((m) => m.role === "student")
      .map((m) => ({
        userId: m.userId,
        displayName: m.displayName,
        pageIndex: presence[m.userId]?.pageIndex ?? 0,
        thumbnail: presence[m.userId]?.thumbnail ?? null,
        updatedAt: presence[m.userId]?.updatedAt ?? "",
        online: online.has(m.userId),
      }));
  },
}));

/**
 * Isolates further edits into their own layer while disconnected.
 *
 * Nothing else changes: the tools, the renderer and the undo stack carry on
 * exactly as before, because "where new units go" is already a property of the
 * page rather than of any tool.
 */
function enterOfflineEditing(): void {
  const state = useEditorStore.getState();
  const page = state.doc?.pages[state.pageIndex];
  if (!state.session || !page) return;
  beginOfflineEditing(state.session, page);
}

/** Folds the isolated layer back in once the connection returns. */
function leaveOfflineEditing(): void {
  const state = useEditorStore.getState();
  const page = state.doc?.pages[state.pageIndex];
  if (!state.session || !page) return;

  const result = mergeOfflineEditing(state.session, page);
  if (result.moved > 0) {
    useClassroomStore.setState({
      lastNotice: `オフライン中の編集 ${result.moved} 件を反映しました`,
    });
  }
}

/**
 * Applies an edit that came from a peer.
 *
 * It goes in through `applyRemote`, not the normal edit path, so it does not
 * land on the local undo stack — a user must not be able to undo someone
 * else's work — and does not echo back out as a fresh Direction.
 */
function applyRemoteDirection(direction: RelayDirection): void {
  const state = useEditorStore.getState();
  const session = state.session;
  if (!session || !state.doc) return;
  // Only edits for the note currently open can be applied.
  if (direction.documentId !== state.noteId) return;

  const edit = direction.payload as CompoundEdit | null;
  if (!edit || !Array.isArray(edit.children)) return;

  session.applyRemote(edit);
}

/** Re-exported so the editor can push its own edits without importing the store. */
export function sendLocalEdit(documentId: string, edit: CompoundEdit): void {
  const session = useClassroomStore.getState().session;
  if (!session) return;
  session.send(edit.editId, documentId, edit);
}

export { applyCompound };
