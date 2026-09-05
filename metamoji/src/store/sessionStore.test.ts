import { beforeEach, describe, expect, it } from "vitest";

import { markSessionClosed, markSessionOpen, readInterruptedSession } from "./sessionStore";

beforeEach(() => {
  window.localStorage.clear();
});

describe("session marker", () => {
  it("reports nothing when no note was open", () => {
    expect(readInterruptedSession()).toBeNull();
  });

  it("remembers an open note", () => {
    markSessionOpen({ noteId: "note_1", pageIndex: 2, title: "代数" });

    const session = readInterruptedSession();
    expect(session?.noteId).toBe("note_1");
    expect(session?.pageIndex).toBe(2);
    expect(session?.title).toBe("代数");
  });

  it("forgets it after a clean close", () => {
    markSessionOpen({ noteId: "note_1", pageIndex: 0, title: "代数" });
    markSessionClosed();
    expect(readInterruptedSession()).toBeNull();
  });

  it("ignores a marker older than a day", () => {
    const stale = {
      noteId: "note_old",
      pageIndex: 0,
      title: "古いノート",
      at: Date.now() - 25 * 60 * 60 * 1000,
    };
    window.localStorage.setItem("metamoji.session", JSON.stringify(stale));

    // Offering to resume week-old work is noise, not help.
    expect(readInterruptedSession()).toBeNull();
    // And the stale marker is cleared, so it is not re-evaluated every launch.
    expect(window.localStorage.getItem("metamoji.session")).toBeNull();
  });

  it("survives corrupt storage rather than throwing at startup", () => {
    window.localStorage.setItem("metamoji.session", "{not json");
    expect(readInterruptedSession()).toBeNull();
  });

  it("ignores a marker with no note id", () => {
    window.localStorage.setItem(
      "metamoji.session",
      JSON.stringify({ pageIndex: 1, title: "x", at: Date.now() }),
    );
    expect(readInterruptedSession()).toBeNull();
  });

  it("keeps only the most recent note", () => {
    markSessionOpen({ noteId: "note_1", pageIndex: 0, title: "一つ目" });
    markSessionOpen({ noteId: "note_2", pageIndex: 5, title: "二つ目" });

    const session = readInterruptedSession();
    expect(session?.noteId).toBe("note_2");
    expect(session?.pageIndex).toBe(5);
  });
});
