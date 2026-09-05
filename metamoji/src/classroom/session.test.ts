import { beforeEach, describe, expect, it, vi } from "vitest";

import { ClassroomSession, clearClassroomQueue, type ClassroomEvents } from "./session";

/** A WebSocket stand-in whose messages the test can inspect and drive. */
class FakeSocket {
  static instances: FakeSocket[] = [];
  static OPEN = 1;

  readyState = 0;
  sent: string[] = [];
  private listeners: Record<string, ((e: unknown) => void)[]> = {};

  constructor(readonly url: string) {
    FakeSocket.instances.push(this);
  }

  addEventListener(type: string, fn: (e: unknown) => void) {
    (this.listeners[type] ??= []).push(fn);
  }

  send(data: string) {
    this.sent.push(data);
  }

  close() {
    this.readyState = 3;
    this.emit("close", {});
  }

  open() {
    this.readyState = 1;
    this.emit("open", {});
  }

  receive(message: unknown) {
    this.emit("message", { data: JSON.stringify(message) });
  }

  private emit(type: string, event: unknown) {
    for (const fn of this.listeners[type] ?? []) fn(event);
  }

  get parsedSends() {
    return this.sent.map((s) => JSON.parse(s) as Record<string, unknown>);
  }
}

function events(): ClassroomEvents & { calls: Record<string, unknown[][]> } {
  const calls: Record<string, unknown[][]> = {};
  const record =
    (name: string) =>
    (...args: unknown[]) => {
      (calls[name] ??= []).push(args);
    };
  return {
    calls,
    onState: record("onState"),
    onDirection: record("onDirection"),
    onMemberOnline: record("onMemberOnline"),
    onMemberOffline: record("onMemberOffline"),
    onLocked: record("onLocked"),
    onAttention: record("onAttention"),
    onDistributed: record("onDistributed"),
    onPresence: record("onPresence"),
    onRejected: record("onRejected"),
  } as ClassroomEvents & { calls: Record<string, unknown[][]> };
}

beforeEach(() => {
  window.localStorage.clear();
  FakeSocket.instances = [];
  vi.stubGlobal("WebSocket", FakeSocket);
});

function connected(roomId = "room_1") {
  const ev = events();
  const session = new ClassroomSession(roomId, "ws://test/ws", ev);
  session.connect();
  const socket = FakeSocket.instances.at(-1)!;
  socket.open();
  return { session, socket, ev };
}

describe("connection", () => {
  it("reports state as it connects", () => {
    const { ev } = connected();
    expect(ev.calls.onState.map((c) => c[0])).toEqual(["connecting", "online"]);
  });

  it("sends a heartbeat rather than waiting to be disconnected", () => {
    vi.useFakeTimers();
    const { socket } = connected();
    vi.advanceTimersByTime(21_000);

    expect(socket.parsedSends.some((m) => m.type === "ping")).toBe(true);
    vi.useRealTimers();
  });

  it("reconnects after an unexpected close", () => {
    vi.useFakeTimers();
    const { socket } = connected();
    expect(FakeSocket.instances).toHaveLength(1);

    socket.close();
    vi.advanceTimersByTime(2000);
    // A dropped connection comes back on its own.
    expect(FakeSocket.instances.length).toBeGreaterThan(1);
    vi.useRealTimers();
  });

  it("does not reconnect after a deliberate disconnect", () => {
    vi.useFakeTimers();
    const { session } = connected();
    session.disconnect();
    vi.advanceTimersByTime(30_000);

    expect(FakeSocket.instances).toHaveLength(1);
    vi.useRealTimers();
  });
});

describe("outgoing edits", () => {
  it("sends an edit and keeps it queued until acked", () => {
    const { session, socket } = connected();
    session.send("e1", "d1", { op: 1 });

    expect(socket.parsedSends.some((m) => m.editId === "e1")).toBe(true);
    // At-least-once: it stays queued until the server confirms.
    expect(session.pendingCount).toBe(1);

    socket.receive({ type: "direction.ack", editId: "e1", seq: 1 });
    expect(session.pendingCount).toBe(0);
  });

  it("resends whatever is unacked when the connection returns", () => {
    vi.useFakeTimers();
    const { session, socket } = connected();
    session.send("e1", "d1", { op: 1 });
    socket.close();

    vi.advanceTimersByTime(2000);
    const reconnected = FakeSocket.instances.at(-1)!;
    reconnected.open();

    expect(reconnected.parsedSends.some((m) => m.editId === "e1")).toBe(true);
    vi.useRealTimers();
  });

  it("survives the app closing, because the queue is persisted", () => {
    const first = connected("room_persist");
    first.session.send("e1", "d1", { op: 1 });
    first.session.disconnect();

    // A brand-new session for the same room picks the queue back up.
    const second = new ClassroomSession("room_persist", "ws://test/ws", events());
    expect(second.pendingCount).toBe(1);
  });

  it("drops a rejected edit rather than resending it forever", () => {
    const { session, socket, ev } = connected();
    session.send("e1", "d1", { op: 1 });

    socket.receive({ type: "direction.rejected", editId: "e1", reason: "locked" });
    expect(session.pendingCount).toBe(0);
    expect(ev.calls.onRejected[0]).toEqual(["e1", "locked"]);
  });

  it("does not queue presence, which is superseded by the next one", () => {
    const { session, socket } = connected();
    session.sendPresence(3);

    expect(socket.parsedSends.some((m) => m.type === "presence")).toBe(true);
    expect(session.pendingCount).toBe(0);
  });
});

describe("incoming directions", () => {
  it("delivers a new direction", () => {
    const { socket, ev } = connected();
    socket.receive({
      type: "direction",
      direction: { seq: 1, roomId: "room_1", editId: "x", actorId: "u", documentId: "d", payload: {}, at: "" },
    });
    expect(ev.calls.onDirection).toHaveLength(1);
  });

  it("ignores one already applied, because delivery is at-least-once", () => {
    const { socket, ev } = connected();
    const direction = {
      seq: 1, roomId: "room_1", editId: "x", actorId: "u", documentId: "d", payload: {}, at: "",
    };

    socket.receive({ type: "direction", direction });
    socket.receive({ type: "direction", direction });

    // Applying the same edit twice would duplicate it (docs/06 §4).
    expect(ev.calls.onDirection).toHaveLength(1);
  });

  it("remembers how far it got across sessions", () => {
    const first = connected("room_seq");
    first.socket.receive({
      type: "direction",
      direction: { seq: 7, roomId: "room_seq", editId: "x", actorId: "u", documentId: "d", payload: {}, at: "" },
    });
    first.session.disconnect();

    const second = new ClassroomSession("room_seq", "ws://test/ws", events());
    expect(second.sequence).toBe(7);
  });

  it("ignores malformed messages instead of throwing", () => {
    const { socket, ev } = connected();
    expect(() => socket.receive("not an object")).not.toThrow();
    expect(ev.calls.onDirection).toBeUndefined();
  });
});

describe("room events", () => {
  it("relays membership, lock, attention, distribution and presence", () => {
    const { socket, ev } = connected();

    socket.receive({ type: "member.online", userId: "u1", displayName: "生徒" });
    socket.receive({ type: "member.offline", userId: "u1" });
    socket.receive({ type: "room.locked", locked: true });
    socket.receive({ type: "room.attention", userId: "u1" });
    socket.receive({ type: "room.distributed", distributionId: "d1", title: "配布" });
    socket.receive({ type: "presence", userId: "u1", pageIndex: 2 });

    expect(ev.calls.onMemberOnline[0]).toEqual(["u1", "生徒"]);
    expect(ev.calls.onMemberOffline[0]).toEqual(["u1"]);
    expect(ev.calls.onLocked[0]).toEqual([true]);
    expect(ev.calls.onAttention[0]).toEqual(["u1"]);
    expect(ev.calls.onDistributed[0]).toEqual(["d1", "配布"]);
    expect(ev.calls.onPresence[0]).toEqual(["u1", 2]);
  });

  it("passes a cleared attention through as null", () => {
    const { socket, ev } = connected();
    socket.receive({ type: "room.attention", userId: null });
    expect(ev.calls.onAttention[0]).toEqual([null]);
  });
});

describe("clearClassroomQueue", () => {
  it("forgets both the queue and the sequence", () => {
    const { session } = connected("room_clear");
    session.send("e1", "d1", {});
    session.disconnect();

    clearClassroomQueue("room_clear");
    const fresh = new ClassroomSession("room_clear", "ws://test/ws", events());
    expect(fresh.pendingCount).toBe(0);
    expect(fresh.sequence).toBe(0);
  });
});
