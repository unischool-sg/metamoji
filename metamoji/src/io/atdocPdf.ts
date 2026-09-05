/**
 * Rasterises the PDF that an imported MetaMoJi note is drawn on.
 *
 * A class handout is a PDF with ink on top: every page carries a `$pdf` unit in
 * its background layer, and all of them point at one PDF held as an attachment.
 * The importer moves that PDF into the note's asset store; this turns each page
 * of it into an image the renderer can actually draw.
 *
 * Done once, at import, rather than on every repaint — the same trade the app's
 * own PDF import makes, and for the same reason: a live PDF object would be
 * re-rendered constantly for a result the user cannot tell apart.
 */

import * as api from "../ipc/api";
import type { GenericTree } from "../model/generic";
import { renderPdfPages } from "./pdf";

const MT_PDF = "$pdf";

/**
 * How much finer than the note's own coordinates the raster is rendered.
 *
 * A page imported from A4 is ~842 units wide, so rendering 1:1 would put a
 * single device pixel on each unit and turn to mush at any zoom above 100%.
 */
const RASTER_SCALE = 2;
/** Beyond this a page costs more memory than the sharpness is worth. */
const MAX_RASTER_WIDTH = 3000;
const FALLBACK_WIDTH = 1240;

/** The asset id a rendered page is stored under. */
export function pdfPageTicket(ticket: string, page: number): string {
  return `${ticket}:p${page}`;
}

interface Wanted {
  pages: Set<number>;
  width: number;
}

/** Which PDF pages this document needs, and how wide each PDF is drawn. */
function wantedPages(tree: GenericTree): Map<string, Wanted> {
  const out = new Map<string, Wanted>();
  for (const model of Object.values(tree.models)) {
    if (model.modelType !== MT_PDF) continue;
    const props = model.props as Record<string, unknown>;

    const ticket = typeof props.ticket === "string" ? props.ticket : "";
    const page = Number(props.page ?? 1);
    if (!ticket || !Number.isInteger(page) || page < 1) continue;

    const width = Number(props.width ?? 0);
    const entry = out.get(ticket) ?? { pages: new Set<number>(), width: 0 };
    entry.pages.add(page);
    if (Number.isFinite(width)) entry.width = Math.max(entry.width, width);
    out.set(ticket, entry);
  }
  return out;
}

/**
 * Renders every page referenced by a `$pdf` unit and points the unit at it.
 *
 * Mutates `tree` — the caller is about to save it — and returns how many pages
 * were rendered. A ticket with no asset behind it is skipped rather than
 * failing the import: the rest of the note still opens, and the unit keeps its
 * placeholder.
 */
export async function rasterisePdfUnits(
  noteId: string,
  tree: GenericTree,
  onProgress?: (done: number, total: number) => void,
): Promise<number> {
  const wanted = wantedPages(tree);
  if (wanted.size === 0) return 0;

  const total = [...wanted.values()].reduce((n, entry) => n + entry.pages.size, 0);
  let done = 0;
  let rendered = 0;

  for (const [ticket, entry] of wanted) {
    let dataUrl: string;
    try {
      dataUrl = await api.assetGet(noteId, ticket);
    } catch {
      // The document referenced a PDF it did not carry. Nothing to draw.
      done += entry.pages.size;
      onProgress?.(done, total);
      continue;
    }

    const pages = [...entry.pages].sort((a, b) => a - b);
    const width = Math.min(
      MAX_RASTER_WIDTH,
      Math.max(1, (entry.width || FALLBACK_WIDTH) * RASTER_SCALE),
    );

    const images = await renderPdfPages(dataUrl, width, pages, () =>
      onProgress?.(Math.min(total, done + 1), total),
    );

    for (const image of images) {
      const rasterTicket = pdfPageTicket(ticket, image.page);
      await api.assetPut(noteId, rasterTicket, image.dataUrl);
      for (const model of Object.values(tree.models)) {
        if (model.modelType !== MT_PDF) continue;
        const props = model.props as Record<string, unknown>;
        if (props.ticket !== ticket || Number(props.page ?? 1) !== image.page) continue;
        props.rasterTicket = rasterTicket;
      }
      rendered += 1;
    }

    done += entry.pages.size;
    onProgress?.(done, total);
  }

  return rendered;
}
