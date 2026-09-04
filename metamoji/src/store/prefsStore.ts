/**
 * User preferences.
 *
 * Kept separate from the editor store because these outlive any one document
 * and are persisted, whereas the editor store is torn down whenever a note
 * closes. Storage is `localStorage`: preferences are per-machine UI state, not
 * document data, so routing them through the note database would be wrong.
 */

import { create } from "zustand";

const STORAGE_KEY = "metamoji.prefs";

export interface Prefs {
  autosaveSeconds: number;
  /** Allow finger input to draw. Off means touch pans and only a pen draws. */
  fingerDrawing: boolean;
  defaultPaperStyle: "blank" | "lines" | "grid" | "dots";
}

const DEFAULTS: Prefs = {
  autosaveSeconds: 1,
  fingerDrawing: false,
  defaultPaperStyle: "blank",
};

function load(): Prefs {
  try {
    const raw = window.localStorage?.getItem(STORAGE_KEY);
    if (!raw) return DEFAULTS;
    // Spread over the defaults so a preferences file written by an older build
    // gains new keys instead of leaving them undefined.
    return { ...DEFAULTS, ...(JSON.parse(raw) as Partial<Prefs>) };
  } catch {
    return DEFAULTS;
  }
}

function persist(prefs: Prefs): void {
  try {
    window.localStorage?.setItem(STORAGE_KEY, JSON.stringify(prefs));
  } catch {
    // Storage can be unavailable (private mode, quota). The setting still
    // applies for this session; it just is not remembered.
  }
}

interface PrefsState extends Prefs {
  setAutosaveSeconds: (seconds: number) => void;
  setFingerDrawing: (on: boolean) => void;
  setDefaultPaperStyle: (style: Prefs["defaultPaperStyle"]) => void;
}

export const usePrefsStore = create<PrefsState>((set, get) => ({
  ...load(),

  setAutosaveSeconds: (autosaveSeconds) => {
    set({ autosaveSeconds });
    persist(snapshot(get()));
  },
  setFingerDrawing: (fingerDrawing) => {
    set({ fingerDrawing });
    persist(snapshot(get()));
  },
  setDefaultPaperStyle: (defaultPaperStyle) => {
    set({ defaultPaperStyle });
    persist(snapshot(get()));
  },
}));

function snapshot(state: PrefsState): Prefs {
  return {
    autosaveSeconds: state.autosaveSeconds,
    fingerDrawing: state.fingerDrawing,
    defaultPaperStyle: state.defaultPaperStyle,
  };
}

export function usePrefs(): PrefsState {
  return usePrefsStore();
}
