/**
 * The realtime classroom connection.
 *
 * Implements the delivery model docs/06 §4 derives from the original:
 *
 *   - **ordered**: one connection, and the server assigns a monotonic sequence
 *     number per room, so replay order is send order.
 *   - **at-least-once**: an outgoing edit stays in a persistent queue until the
 *     server acks it. Reconnecting resends whatever is still queued.
 *   - **not idempotent**: applying an edit twice would duplicate it, so both
 *     ends dedup — the server by `editId`, this client by sequence number.
 *
 * docs/06 §4 notes the original persists its unacked sends and resends them on
 * coming back online. That is what the queue below is, kept in `localStorage`
 * so it survives the app closing mid-lesson.
 *
 * The original's socket has no client-side ping timer and simply disconnects
 * after 30 seconds of silence (docs/06 §3). This sends a heartbeat instead: a
 * connection that has quietly died is worth discovering before the user's next
 * edit fails.
 */

import type { RelayDirection } from "../sync/client";

const QUEUE_KEY = "metamoji.classroom.queue";
const SEQ_KEY = "metamoji.classroom.seq";
const HEARTBEAT_MS = 20_000;
const RECONNECT_BASE_MS = 500;
const RECONNECT_MAX_MS = 15_000;

export interface OutgoingDirection {
  editId: string;
  documentId: string;
  payload: unknown;
  /** When it was queued, for reporting how far behind we are. */
  at: number;
}

export type ConnectionState = "offline" | "connecting" | "online";

export interface ClassroomEvents {
  onState(state: ConnectionState): void;
  onDirection(direction: RelayDirection): void;
  onMemberOnline(userId: string, displayName: string): void;
  onMemberOffline(userId: string): void;
  onLocked(locked: boolean): void;
  onAttention(userId: string | null): void;
  onDistributed(distributionId: string, title: string): void;
  onPresence(userId: string, pageIndex: number): void;
  onRejected(editId: string, reason: string): void;
}

function loadQueue(roomId: string): OutgoingDirection[] {
  try {
    const raw = window.localStorage?.getItem(`${QUEUE_KEY}.${roomId}`);
    return raw ? (JSON.parse(raw) as OutgoingDirection[]) : [];
  } catch {
    return [];
  }
}

function saveQueue(roomId: string, queue: OutgoingDirection[]): void {
  try {
    window.localStorage?.setItem(`${QUEUE_KEY}.${roomId}`, JSON.stringify(queue));
  } catch {
    // Without storage the queue is session-only; delivery still works while
    // the app is running.
  }
}

function loadSeq(roomId: string): number {
  return Number(window.localStorage?.getItem(`${SEQ_KEY}.${roomId}`) ?? 0);
}

function saveSeq(roomId: string, seq: number): void {
  try {
    window.localStorage?.setItem(`${SEQ_KEY}.${roomId}`, String(seq));
  } catch {
    // See above.
  }
}

export class ClassroomSession {
  private socket: WebSocket | null = null;
  private queue: OutgoingDirection[];
  /** Highest sequence number already applied, so a replay skips old work. */
  private lastSeq: number;
  private state: ConnectionState = "offline";
  private heartbeat: ReturnType<typeof setInterval> | null = null;
  private reconnectTimer: ReturnType<typeof setTimeout> | null = null;
  private reconnectAttempt = 0;
  private closedByUs = false;

  constructor(
    private roomId: string,
    private socketUrl: string,
    private events: ClassroomEvents,
  ) {
    this.queue = loadQueue(roomId);
    this.lastSeq = loadSeq(roomId);
  }

  get connectionState(): ConnectionState {
    return this.state;
  }

  get pendingCount(): number {
    return this.queue.length;
  }

  get sequence(): number {
    return this.lastSeq;
  }

  connect(): void {
    if (this.socket && this.socket.readyState <= WebSocket.OPEN) return;
    this.closedByUs = false;
    this.setState("connecting");

    const socket = new WebSocket(this.socketUrl);
    this.socket = socket;

    socket.addEventListener("open", () => {
      this.reconnectAttempt = 0;
      this.setState("online");
      // Anything unacked from a previous connection goes out again.
      this.flush();
      this.startHeartbeat();
    });

    socket.addEventListener("message", (event) => this.handle(String(event.data)));
    socket.addEventListener("close", () => this.onClosed());
    socket.addEventListener("error", () => {
      // `error` is always followed by `close`; reconnecting is handled there so
      // it does not happen twice.
    });
  }

  disconnect(): void {
    this.closedByUs = true;
    this.stopHeartbeat();
    if (this.reconnectTimer) clearTimeout(this.reconnectTimer);
    this.reconnectTimer = null;
    this.socket?.close();
    this.socket = null;
    this.setState("offline");
  }

  /**
   * Queues an edit and sends it if connected.
   *
   * The queue entry is written before the send, so an edit made a moment before
   * the connection drops is still delivered when it comes back.
   */
  send(editId: string, documentId: string, payload: unknown): void {
    this.queue.push({ editId, documentId, payload, at: Date.now() });
    saveQueue(this.roomId, this.queue);
    this.flush();
  }

  sendPresence(pageIndex: number, thumbnail?: string): void {
    // Presence is disposable: if it cannot go now, the next one supersedes it.
    if (this.state !== "online") return;
    this.socket?.send(JSON.stringify({ type: "presence", pageIndex, thumbnail }));
  }

  /** Edits the server has that this client has not applied yet. */
  markApplied(seq: number): void {
    if (seq <= this.lastSeq) return;
    this.lastSeq = seq;
    saveSeq(this.roomId, seq);
  }

  private flush(): void {
    if (this.state !== "online" || !this.socket) return;
    for (const item of this.queue) {
      this.socket.send(
        JSON.stringify({
          type: "direction",
          editId: item.editId,
          documentId: item.documentId,
          payload: item.payload,
        }),
      );
    }
  }

  private handle(raw: string): void {
    let message: Record<string, unknown>;
    try {
      message = JSON.parse(raw) as Record<string, unknown>;
    } catch {
      return;
    }

    switch (message.type) {
      case "direction.ack": {
        const editId = String(message.editId);
        // Acked, so it can leave the resend queue.
        this.queue = this.queue.filter((item) => item.editId !== editId);
        saveQueue(this.roomId, this.queue);
        this.markApplied(Number(message.seq ?? 0));
        return;
      }

      case "direction.rejected": {
        const editId = String(message.editId);
        // A rejection is final — resending would be refused identically.
        this.queue = this.queue.filter((item) => item.editId !== editId);
        saveQueue(this.roomId, this.queue);
        this.events.onRejected(editId, String(message.reason ?? "rejected"));
        return;
      }

      case "direction": {
        const direction = message.direction as RelayDirection | undefined;
        if (!direction) return;
        // Dedup by sequence number: delivery is at-least-once, and applying an
        // edit twice would duplicate it (docs/06 §4).
        if (direction.seq <= this.lastSeq) return;
        this.markApplied(direction.seq);
        this.events.onDirection(direction);
        return;
      }

      case "member.online":
        this.events.onMemberOnline(String(message.userId), String(message.displayName ?? ""));
        return;
      case "member.offline":
        this.events.onMemberOffline(String(message.userId));
        return;
      case "room.locked":
        this.events.onLocked(Boolean(message.locked));
        return;
      case "room.attention":
        this.events.onAttention(
          message.userId === null ? null : String(message.userId),
        );
        return;
      case "room.distributed":
        this.events.onDistributed(
          String(message.distributionId),
          String(message.title ?? ""),
        );
        return;
      case "presence":
        this.events.onPresence(String(message.userId), Number(message.pageIndex ?? 0));
        return;
      case "pong":
        return;
    }
  }

  private onClosed(): void {
    this.stopHeartbeat();
    this.socket = null;
    this.setState("offline");
    if (this.closedByUs) return;

    // Exponential backoff, capped. A classroom of thirty devices all retrying
    // in lockstep after a Wi-Fi blip is its own denial of service.
    const delay = Math.min(
      RECONNECT_MAX_MS,
      RECONNECT_BASE_MS * 2 ** this.reconnectAttempt,
    );
    const jitter = delay * (0.5 + Math.random() * 0.5);
    this.reconnectAttempt += 1;
    this.reconnectTimer = setTimeout(() => this.connect(), jitter);
  }

  private startHeartbeat(): void {
    this.stopHeartbeat();
    this.heartbeat = setInterval(() => {
      if (this.socket?.readyState === WebSocket.OPEN) {
        this.socket.send(JSON.stringify({ type: "ping" }));
      }
    }, HEARTBEAT_MS);
  }

  private stopHeartbeat(): void {
    if (this.heartbeat) clearInterval(this.heartbeat);
    this.heartbeat = null;
  }

  private setState(state: ConnectionState): void {
    if (this.state === state) return;
    this.state = state;
    this.events.onState(state);
  }
}

export function clearClassroomQueue(roomId: string): void {
  try {
    window.localStorage?.removeItem(`${QUEUE_KEY}.${roomId}`);
    window.localStorage?.removeItem(`${SEQ_KEY}.${roomId}`);
  } catch {
    // Nothing to clean up.
  }
}
