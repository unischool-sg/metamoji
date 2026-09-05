/**
 * PDF import, via pdf.js in the webview.
 *
 * docs/11 §8 suggests a Rust PDF crate, and export does use one. Import is the
 * opposite trade: rendering a PDF page needs a full renderer (fonts, shading,
 * blend modes), and the two Rust options are a hand-written parser — the thing
 * docs/11 spent 71 lines explaining not to rebuild — or bundling pdfium at
 * ~10 MB per platform. pdf.js already ships with the webview's capabilities and
 * renders to the same canvas the rest of the app draws on.
 */

import * as pdfjs from "pdfjs-dist";
import type { PDFDocumentLoadingTask, PDFDocumentProxy } from "pdfjs-dist";

// Vite resolves this to a hashed asset URL and bundles the worker.
import PdfWorker from "pdfjs-dist/build/pdf.worker.min.mjs?url";

pdfjs.GlobalWorkerOptions.workerSrc = PdfWorker;

export interface PdfPageImage {
  /** 1-based page this image is of. Out-of-range requests are dropped, so the
   * caller cannot pair the results back up by position. */
  page: number;
  dataUrl: string;
  /** Rendered size in pixels. */
  width: number;
  height: number;
}

export interface PdfInfo {
  pageCount: number;
  title?: string;
}

function dataUrlToUint8Array(dataUrl: string): Uint8Array {
  const payload = dataUrl.includes(",") ? dataUrl.slice(dataUrl.indexOf(",") + 1) : dataUrl;
  const binary = atob(payload);
  const bytes = new Uint8Array(binary.length);
  for (let i = 0; i < binary.length; i++) bytes[i] = binary.charCodeAt(i);
  return bytes;
}

interface LoadedPdf {
  pdf: PDFDocumentProxy;
  task: PDFDocumentLoadingTask;
}

/**
 * The loading task owns the worker, so releasing it — not the document proxy —
 * is what actually frees memory. Holding both keeps that explicit.
 */
async function load(dataUrl: string): Promise<LoadedPdf> {
  // pdf.js transfers the buffer, so hand it a copy the caller does not keep.
  const task = pdfjs.getDocument({ data: dataUrlToUint8Array(dataUrl) });
  return { pdf: await task.promise, task };
}

export async function readPdfInfo(dataUrl: string): Promise<PdfInfo> {
  const { pdf, task } = await load(dataUrl);
  try {
    const meta = await pdf.getMetadata().catch(() => null);
    const info = meta?.info as { Title?: string } | undefined;
    return { pageCount: pdf.numPages, title: info?.Title };
  } finally {
    await task.destroy();
  }
}

/**
 * Renders PDF pages to PNG data URLs.
 *
 * `targetWidth` is in document units; each page is rendered at whatever scale
 * fills that width, so an imported page lands at the note's paper size rather
 * than at the PDF's own point size.
 */
export async function renderPdfPages(
  dataUrl: string,
  targetWidth: number,
  pageNumbers?: number[],
  onProgress?: (done: number, total: number) => void,
): Promise<PdfPageImage[]> {
  const { pdf, task } = await load(dataUrl);
  try {
    const numbers = pageNumbers ?? Array.from({ length: pdf.numPages }, (_, i) => i + 1);
    const out: PdfPageImage[] = [];

    for (const [i, pageNumber] of numbers.entries()) {
      if (pageNumber < 1 || pageNumber > pdf.numPages) continue;
      const page = await pdf.getPage(pageNumber);

      const base = page.getViewport({ scale: 1 });
      const viewport = page.getViewport({ scale: targetWidth / base.width });

      const canvas = document.createElement("canvas");
      canvas.width = Math.max(1, Math.round(viewport.width));
      canvas.height = Math.max(1, Math.round(viewport.height));
      const ctx = canvas.getContext("2d");
      if (!ctx) throw new Error("could not create a 2D context for the PDF page");

      // PDFs assume a white page; without this, transparent areas come out
      // black once the PNG is composited.
      ctx.fillStyle = "#ffffff";
      ctx.fillRect(0, 0, canvas.width, canvas.height);

      await page.render({ canvas, canvasContext: ctx, viewport }).promise;
      out.push({
        page: pageNumber,
        dataUrl: canvas.toDataURL("image/png"),
        width: canvas.width,
        height: canvas.height,
      });
      page.cleanup();
      onProgress?.(i + 1, numbers.length);
    }

    return out;
  } finally {
    await task.destroy();
  }
}

/** Parses "1-3, 5, 8-" into page numbers, clamped to `pageCount`. */
export function parsePageRange(input: string, pageCount: number): number[] {
  const trimmed = input.trim();
  if (trimmed === "") return Array.from({ length: pageCount }, (_, i) => i + 1);

  const pages = new Set<number>();
  for (const part of trimmed.split(",")) {
    const piece = part.trim();
    if (piece === "") continue;

    const match = /^(\d*)\s*-\s*(\d*)$/.exec(piece);
    if (match) {
      const from = match[1] === "" ? 1 : Number(match[1]);
      const to = match[2] === "" ? pageCount : Number(match[2]);
      for (let p = Math.max(1, from); p <= Math.min(pageCount, to); p++) pages.add(p);
      continue;
    }

    const single = Number(piece);
    if (Number.isInteger(single) && single >= 1 && single <= pageCount) pages.add(single);
  }
  return [...pages].sort((a, b) => a - b);
}
