/**
 * The canvas chrome's colours, read from the Material tokens.
 *
 * Only *chrome* — selection outlines, the marquee, the laser dot. Document
 * content (paper colour, ruled lines, page furniture, survey marks) stays
 * literal in `render/renderer.ts` on purpose: the same function draws the
 * screen, the page-strip thumbnails and the exported PDF, and a PDF that came
 * out dark because the app was in dark mode would be a bug, not a feature.
 *
 * Values are resolved once and cached. `getComputedStyle` forces a style
 * recalc, and the chrome repaints on every pointer move during a drag.
 */

export interface CanvasTheme {
  /**
   * Behind the sheet. The scene canvas is created with `alpha: false` — an
   * opaque canvas skips per-frame compositing — so this cannot be left to the
   * CSS background: an opaque canvas clears to black.
   */
  workspace: string;
  /** Selection outlines, marquee borders, lasso strokes. */
  selection: string;
  /** Marquee and lasso fills — the same hue at low alpha. */
  selectionFill: string;
  selectionFillFaint: string;
  /** Resize/rotate handles. */
  handleFill: string;
  /** The laser pointer, which is a warning colour by convention. */
  laser: string;
}

let cached: CanvasTheme | null = null;

function readVar(name: string, fallback: string): string {
  const value = getComputedStyle(document.documentElement).getPropertyValue(name).trim();
  return value || fallback;
}

/**
 * `#rrggbb` to `rgba(...)`. Canvas accepts CSS colours, but not the token
 * reference itself, and `color-mix()` support in `fillStyle` is not something
 * to rely on — so the alpha is applied here.
 */
function withAlpha(hex: string, alpha: number): string {
  const match = /^#?([\da-f]{6})$/i.exec(hex.trim());
  if (!match) return hex;
  const n = parseInt(match[1], 16);
  return `rgba(${(n >> 16) & 255}, ${(n >> 8) & 255}, ${n & 255}, ${alpha})`;
}

export function canvasTheme(): CanvasTheme {
  if (cached) return cached;

  const selection = readVar("--md-sys-color-primary", "#0062a0");
  cached = {
    workspace: readVar("--md-sys-color-surface-dim", "#d7dae2"),
    selection,
    selectionFill: withAlpha(selection, 0.12),
    selectionFillFaint: withAlpha(selection, 0.08),
    handleFill: readVar("--md-sys-color-surface", "#ffffff"),
    laser: readVar("--md-sys-color-error", "#ba1a1a"),
  };
  return cached;
}

/** Called when the scheme changes; the next paint re-reads the tokens. */
export function invalidateCanvasTheme(): void {
  cached = null;
}

/**
 * Subscribes to colour-scheme changes.
 *
 * Dropping the cache is not enough on its own: nothing on the canvas repaints
 * until something asks it to, so a user switching to dark mode mid-note would
 * keep the light workspace until the next edit. The caller supplies the
 * repaint.
 */
export function onCanvasThemeChange(repaint: () => void): () => void {
  if (typeof window === "undefined" || !window.matchMedia) return () => {};

  const media = window.matchMedia("(prefers-color-scheme: dark)");
  const handle = () => {
    invalidateCanvasTheme();
    repaint();
  };
  media.addEventListener("change", handle);
  return () => media.removeEventListener("change", handle);
}
