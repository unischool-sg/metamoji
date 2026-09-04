/**
 * Viewport: the world <-> screen transform.
 *
 * docs/10 §4 describes the original splitting pan onto the Viewport and zoom
 * onto the Stage, with two resident 30fps threads driving repaint. We keep a
 * single scale+translate here and repaint from rAF instead: the split existed
 * to work around Android view composition, and reproducing it would buy us
 * nothing on a canvas we own outright.
 */

import type { Point, Rect } from "../model/types";

export interface Viewport {
  /** World units per screen pixel is 1/scale; scale 1 = 100%. */
  scale: number;
  /** Translation in screen pixels, applied after scaling. */
  tx: number;
  ty: number;
}

export const MIN_SCALE = 0.1;
export const MAX_SCALE = 8;

export const IDENTITY_VIEWPORT: Viewport = { scale: 1, tx: 0, ty: 0 };

export function clampScale(scale: number): number {
  return Math.min(MAX_SCALE, Math.max(MIN_SCALE, scale));
}

export function worldToScreen(vp: Viewport, x: number, y: number): Point {
  return { x: x * vp.scale + vp.tx, y: y * vp.scale + vp.ty };
}

export function screenToWorld(vp: Viewport, x: number, y: number): Point {
  return { x: (x - vp.tx) / vp.scale, y: (y - vp.ty) / vp.scale };
}

/** Zooms about a fixed screen point, so the world point under it stays put. */
export function zoomAbout(vp: Viewport, screenX: number, screenY: number, factor: number): Viewport {
  const scale = clampScale(vp.scale * factor);
  const applied = scale / vp.scale;
  return {
    scale,
    tx: screenX - (screenX - vp.tx) * applied,
    ty: screenY - (screenY - vp.ty) * applied,
  };
}

export function panBy(vp: Viewport, dx: number, dy: number): Viewport {
  return { ...vp, tx: vp.tx + dx, ty: vp.ty + dy };
}

/** Fits a world rect into a viewport of the given screen size, with margin. */
export function fitRect(rect: Rect, viewW: number, viewH: number, margin = 24): Viewport {
  const availW = Math.max(1, viewW - margin * 2);
  const availH = Math.max(1, viewH - margin * 2);
  const scale = clampScale(Math.min(availW / rect.width, availH / rect.height));
  return {
    scale,
    tx: (viewW - rect.width * scale) / 2 - rect.x * scale,
    ty: (viewH - rect.height * scale) / 2 - rect.y * scale,
  };
}

/** The world-space rectangle currently visible, used to cull drawing. */
export function visibleWorldRect(vp: Viewport, viewW: number, viewH: number): Rect {
  const tl = screenToWorld(vp, 0, 0);
  const br = screenToWorld(vp, viewW, viewH);
  return { x: tl.x, y: tl.y, width: br.x - tl.x, height: br.y - tl.y };
}
