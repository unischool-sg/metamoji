/**
 * Remembering what was open, so an unexpected exit is recoverable.
 *
 * docs/14 §3 notes the original jumps straight into the editor when crash
 * recovery data is present. The same idea, scaled to what this app actually
 * risks: autosave runs on a one-second debounce, so at most the last second of
 * work can be lost — the thing worth restoring is *which note and page* you
 * were on, not unsaved content.
 *
 * The marker is written when a note opens and cleared when it closes cleanly.
 * Finding one at startup therefore means the app did not exit normally.
 */

const KEY = "metamoji.session";

export interface OpenSession {
  noteId: string;
  pageIndex: number;
  title: string;
  at: number;
}

export function markSessionOpen(session: Omit<OpenSession, "at">): void {
  try {
    window.localStorage?.setItem(KEY, JSON.stringify({ ...session, at: Date.now() }));
  } catch {
    // Without storage the app still works; it just cannot offer to resume.
  }
}

export function markSessionClosed(): void {
  try {
    window.localStorage?.removeItem(KEY);
  } catch {
    // Nothing to do — the stale marker only costs one dismissible prompt.
  }
}

/**
 * A session that was never closed cleanly.
 *
 * Markers older than a day are ignored: by then the user has long since moved
 * on, and offering to resume week-old work is noise rather than help.
 */
export function readInterruptedSession(): OpenSession | null {
  try {
    const raw = window.localStorage?.getItem(KEY);
    if (!raw) return null;
    const session = JSON.parse(raw) as OpenSession;
    if (!session.noteId) return null;

    const ageMs = Date.now() - (session.at ?? 0);
    if (ageMs > 24 * 60 * 60 * 1000) {
      markSessionClosed();
      return null;
    }
    return session;
  } catch {
    return null;
  }
}
