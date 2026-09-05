import { beforeEach, describe, expect, it, vi } from "vitest";

import type { GenericTree } from "../model/generic";

const assetGet = vi.fn<(noteId: string, ticket: string) => Promise<string>>();
const assetPut = vi.fn<(noteId: string, ticket: string, dataUrl: string) => Promise<string>>();
const renderPdfPages = vi.fn();

vi.mock("../ipc/api", () => ({
  assetGet: (noteId: string, ticket: string) => assetGet(noteId, ticket),
  assetPut: (noteId: string, ticket: string, dataUrl: string) => assetPut(noteId, ticket, dataUrl),
}));

vi.mock("./pdf", () => ({
  renderPdfPages: (...args: unknown[]) => renderPdfPages(...args),
}));

const { pdfPageTicket, rasterisePdfUnits } = await import("./atdocPdf");

function tree(models: Record<string, { modelType: string; props: Record<string, unknown> }>) {
  return {
    rootId: "root",
    models: Object.fromEntries(
      Object.entries(models).map(([id, m]) => [
        id,
        { id, parentId: "root", children: [], ...m },
      ]),
    ),
  } as unknown as GenericTree;
}

const pdfUnit = (page: number, ticket = "tkt") => ({
  modelType: "$pdf",
  props: { ticket, page, width: 800, height: 600 },
});

beforeEach(() => {
  assetGet.mockReset();
  assetPut.mockReset();
  renderPdfPages.mockReset();
  assetPut.mockImplementation(async (_n, ticket) => ticket);
});

describe("rasterisePdfUnits", () => {
  it("renders each referenced page and points its units at the raster", async () => {
    const doc = tree({ a: pdfUnit(1), b: pdfUnit(3) });
    assetGet.mockResolvedValue("data:application/pdf;base64,JVBERi0=");
    renderPdfPages.mockResolvedValue([
      { page: 1, dataUrl: "data:image/png;base64,p1", width: 1600, height: 1200 },
      { page: 3, dataUrl: "data:image/png;base64,p3", width: 1600, height: 1200 },
    ]);

    expect(await rasterisePdfUnits("note-1", doc)).toBe(2);

    // Only the pages the document actually uses, in order.
    expect(renderPdfPages).toHaveBeenCalledTimes(1);
    expect(renderPdfPages.mock.calls[0][2]).toEqual([1, 3]);
    expect(doc.models.a.props.rasterTicket).toBe(pdfPageTicket("tkt", 1));
    expect(doc.models.b.props.rasterTicket).toBe(pdfPageTicket("tkt", 3));
    expect(assetPut).toHaveBeenCalledWith("note-1", pdfPageTicket("tkt", 1), "data:image/png;base64,p1");
  });

  it("renders a page once even when several units share it", async () => {
    // Every page of a class handout carries two `$pdf` units — one on the page
    // and one loose — and rendering the same page twice is pure waste.
    const doc = tree({ a: pdfUnit(2), b: pdfUnit(2) });
    assetGet.mockResolvedValue("data:application/pdf;base64,JVBERi0=");
    renderPdfPages.mockResolvedValue([
      { page: 2, dataUrl: "data:image/png;base64,p2", width: 1600, height: 1200 },
    ]);

    expect(await rasterisePdfUnits("note-1", doc)).toBe(1);
    expect(renderPdfPages.mock.calls[0][2]).toEqual([2]);
    expect(doc.models.a.props.rasterTicket).toBe(pdfPageTicket("tkt", 2));
    expect(doc.models.b.props.rasterTicket).toBe(pdfPageTicket("tkt", 2));
  });

  it("renders finer than the note's own coordinates", async () => {
    const doc = tree({ a: pdfUnit(1) });
    assetGet.mockResolvedValue("data:application/pdf;base64,JVBERi0=");
    renderPdfPages.mockResolvedValue([]);

    await rasterisePdfUnits("note-1", doc);

    // 800 units wide rendered 1:1 would be a single pixel per unit and mush at
    // any zoom above 100%.
    expect(renderPdfPages.mock.calls[0][1]).toBeGreaterThan(800);
  });

  it("skips a ticket with no asset behind it and still renders the rest", async () => {
    const doc = tree({ a: pdfUnit(1, "missing"), b: pdfUnit(1, "present") });
    assetGet.mockImplementation(async (_n, ticket) => {
      if (ticket === "missing") throw new Error("asset not found");
      return "data:application/pdf;base64,JVBERi0=";
    });
    renderPdfPages.mockResolvedValue([
      { page: 1, dataUrl: "data:image/png;base64,p1", width: 1600, height: 1200 },
    ]);

    expect(await rasterisePdfUnits("note-1", doc)).toBe(1);
    expect(doc.models.a.props.rasterTicket).toBeUndefined();
    expect(doc.models.b.props.rasterTicket).toBe(pdfPageTicket("present", 1));
  });

  it("does nothing at all for a note with no PDF in it", async () => {
    const doc = tree({ a: { modelType: "$draw", props: {} } });
    expect(await rasterisePdfUnits("note-1", doc)).toBe(0);
    expect(assetGet).not.toHaveBeenCalled();
  });

  it("reports progress against the number of pages", async () => {
    const doc = tree({ a: pdfUnit(1), b: pdfUnit(2) });
    assetGet.mockResolvedValue("data:application/pdf;base64,JVBERi0=");
    renderPdfPages.mockResolvedValue([
      { page: 1, dataUrl: "data:image/png;base64,p1", width: 8, height: 6 },
      { page: 2, dataUrl: "data:image/png;base64,p2", width: 8, height: 6 },
    ]);

    const seen: Array<[number, number]> = [];
    await rasterisePdfUnits("note-1", doc, (done, total) => seen.push([done, total]));

    expect(seen.at(-1)).toEqual([2, 2]);
  });
});
