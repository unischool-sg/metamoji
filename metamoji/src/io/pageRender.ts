/**
 * Rendering a page off-screen, for export and thumbnails.
 *
 * This is the seam docs/10 §7 identifies as the highest-leverage one: screen,
 * thumbnail and export all go through the same `renderPage` traversal, so an
 * exported page cannot drift from what the user was looking at. The only thing
 * that varies is the target canvas and the scale.
 */

import type { NoteDocument, Page } from "../model/types";
import type { AssetResolver } from "../render/renderer";
import { drawPaper, renderPage } from "../render/renderer";

/** Export resolutions, in dots per inch. Document units are px at 150 dpi. */
export const DOC_DPI = 150;
export const EXPORT_DPI = { screen: 150, print: 300 } as const;

export interface RenderPageOptions {
  assets: AssetResolver;
  /** Output scale relative to document units. 1 = 150 dpi. */
  scale?: number;
  /** Draw the paper background. Off produces a transparent PNG. */
  paper?: boolean;
}

export function renderPageToCanvas(
  page: Page,
  { assets, scale = 1, paper = true }: RenderPageOptions,
): HTMLCanvasElement {
  const canvas = document.createElement("canvas");
  canvas.width = Math.max(1, Math.round(page.paperWidth * scale));
  canvas.height = Math.max(1, Math.round(page.paperHeight * scale));

  const ctx = canvas.getContext("2d");
  if (!ctx) throw new Error("could not create a 2D context for export");

  if (paper) {
    ctx.save();
    ctx.scale(scale, scale);
    drawPaper(ctx, page);
    ctx.restore();
  }

  renderPage(ctx, page, {
    viewport: { scale, tx: 0, ty: 0 },
    viewWidth: canvas.width,
    viewHeight: canvas.height,
    assets,
    // The paper is drawn above, unscaled by the viewport, so the renderer
    // must not draw it a second time.
    paper: false,
  });

  return canvas;
}

export function renderPageToDataUrl(page: Page, options: RenderPageOptions): string {
  return renderPageToCanvas(page, options).toDataURL("image/png");
}

/** Scale factor that fits a page into `maxEdge` pixels, for thumbnails. */
export function thumbnailScale(page: Page, maxEdge: number): number {
  return Math.min(maxEdge / page.paperWidth, maxEdge / page.paperHeight);
}

export interface ExportPagePayload {
  dataUrl: string;
  width: number;
  height: number;
}

/**
 * Renders the pages an export should contain.
 *
 * `pageIndices` selects a subset; omitting it exports the whole note. Rendering
 * happens one page at a time and each canvas is released immediately, because a
 * 40-page note at 300 dpi would otherwise hold ~2 GB of bitmaps at once.
 */
export function renderPagesForExport(
  doc: NoteDocument,
  assets: AssetResolver,
  dpi: number = EXPORT_DPI.screen,
  pageIndices?: number[],
): ExportPagePayload[] {
  const scale = dpi / DOC_DPI;
  const indices = pageIndices ?? doc.pages.map((_, i) => i);

  const out: ExportPagePayload[] = [];
  for (const index of indices) {
    const page = doc.pages[index];
    if (!page) continue;
    out.push({
      dataUrl: renderPageToDataUrl(page, { assets, scale }),
      width: page.paperWidth,
      height: page.paperHeight,
    });
  }
  return out;
}
