/**
 * The relay-event reducer.
 *
 * `reduce` is pure precisely so this can exist: the relay is a live TLS
 * service, so folding its pushes into state is the only part of the classroom
 * that can be checked without one.
 */

import { describe, expect, it } from "vitest";

import { canEdit, decodeBase64, reduce } from "./classroomStore";
import type { ClassroomEvent } from "../ipc/api";

type State = Parameters<typeof reduce>[0];

const base = {
  box: null,
  roomId: "R1",
  roomTitle: null,
  relay: null,
  connection: "connecting",
  roles: [],
  members: [],
  updatedBooths: [],
  receivedDirections: 0,
  notice: null,
  error: null,
  busy: false,
} as unknown as State;

const state = (over: Partial<State> = {}): State => ({ ...base, ...over });
const apply = (event: ClassroomEvent, over: Partial<State> = {}) =>
  reduce(state(over), event);

describe("reduce", () => {
  it("does not call a live socket a joined room", () => {
    // Connecting succeeds long before the relay decides whether to admit us.
    expect(apply({ kind: "connected" })).toEqual({ connection: "connecting" });
  });

  it("goes online only once the relay admits us", () => {
    const next = apply({
      kind: "loggedIn",
      ok: true,
      message: null,
      roomType: "formal",
      userId: "U1",
      roles: ["presenter"],
    });
    expect(next.connection).toBe("online");
    expect(next.roles).toEqual(["presenter"]);
  });

  it("keeps the relay's reason when it refuses", () => {
    const next = apply({
      kind: "loggedIn",
      ok: false,
      message: "room_closed",
      roomType: null,
      userId: null,
      roles: [],
    });
    expect(next.connection).toBe("offline");
    expect(next.error).toBe("room_closed");
  });

  it("adds a participant nobody has seen before", () => {
    const next = apply({
      kind: "roomUpdated",
      key: "user",
      value: "login",
      userId: "U2",
    });
    expect(next.members).toEqual([
      { userId: "U2", name: null, role: null, online: true },
    ]);
  });

  it("marks a known participant online rather than duplicating them", () => {
    const next = apply(
      { kind: "roomUpdated", key: "user", value: "login", userId: "U2" },
      { members: [{ userId: "U2", name: "田中", role: "student", online: false }] },
    );
    expect(next.members).toHaveLength(1);
    expect(next.members?.[0]).toMatchObject({ name: "田中", online: true });
  });

  it("keeps a departed participant in the list, marked offline", () => {
    // Dropping them would make the roster flicker on a brief reconnect, and
    // lose the name the roster call supplied.
    const next = apply(
      { kind: "roomUpdated", key: "user", value: "logout", userId: "U2" },
      { members: [{ userId: "U2", name: "田中", role: null, online: true }] },
    );
    expect(next.members?.[0]).toMatchObject({ name: "田中", online: false });
  });

  it("ignores room updates that are not about people", () => {
    expect(apply({ kind: "roomUpdated", key: "rtype", value: "formal", userId: null }))
      .toEqual({});
  });

  it("applies a role change to us, since the relay scopes it that way", () => {
    // §5: `RoleChanged` carries no `uid` at all.
    expect(apply({ kind: "roleChanged", key: "speaker", enabled: true }, { roles: [] }))
      .toEqual({ roles: ["speaker"] });
    expect(
      apply({ kind: "roleChanged", key: "speaker", enabled: false }, {
        roles: ["presenter", "speaker"],
      }),
    ).toEqual({ roles: ["presenter"] });
  });

  it("records an updated booth once", () => {
    expect(apply({ kind: "boothUpdated", boothId: "b1" }).updatedBooths).toEqual(["b1"]);
    expect(
      apply({ kind: "boothUpdated", boothId: "b1" }, { updatedBooths: ["b1"] }),
    ).toEqual({});
  });

  it("counts other people's edits but not the relay echoing ours", () => {
    const incoming: ClassroomEvent = {
      kind: "direction",
      boothId: "b1",
      sequence: 1,
      userId: "U2",
      ownEcho: false,
    };
    expect(apply(incoming).receivedDirections).toBe(1);
    expect(apply({ ...incoming, ownEcho: true })).toEqual({});
  });

  it("decodes a broadcast message", () => {
    const next = apply({ kind: "message", title: null, body: utf8Base64("しずかに") });
    expect(next.notice).toBe("しずかに");
  });

  it("treats the end of the lesson as a notice, not an error", () => {
    const next = apply({ kind: "finished" });
    expect(next.connection).toBe("offline");
    expect(next.notice).toBeTruthy();
    expect(next.error).toBeUndefined();
  });

  it("surfaces a dropped connection as an error", () => {
    expect(apply({ kind: "disconnected", reason: "timeout" })).toEqual({
      connection: "offline",
      error: "timeout",
    });
  });

  it("ignores the pushes this screen has no use for", () => {
    for (const event of [
      { kind: "modeChanged", key: "log", enabled: true },
      { kind: "postAck", boothId: "b", packetNo: "C1", ok: true },
      { kind: "settingChanged", setting: "e30=" },
    ] as ClassroomEvent[]) {
      expect(apply(event), event.kind).toEqual({});
    }
  });
});

/** `btoa` only takes latin-1, so Japanese has to go through UTF-8 bytes. */
function utf8Base64(text: string): string {
  return btoa(String.fromCharCode(...new TextEncoder().encode(text)));
}

describe("decodeBase64", () => {
  it("round-trips UTF-8", () => {
    expect(decodeBase64(utf8Base64("こんにちは"))).toBe("こんにちは");
  });

  it("returns the input when it is not base64", () => {
    // Better a readable message than an empty banner.
    expect(decodeBase64("plain text!")).toBe("plain text!");
  });
});

describe("canEdit", () => {
  it("is true for the two roles the relay grants write access to", () => {
    expect(canEdit(["presenter"])).toBe(true);
    expect(canEdit(["speaker"])).toBe(true);
    expect(canEdit(["visitor"])).toBe(false);
    expect(canEdit([])).toBe(false);
  });
});
