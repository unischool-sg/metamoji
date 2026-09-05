/**
 * Regression tests for offscreen page rendering.
 *
 * The bug these exist for: `renderPage` clears the canvas as its first act, so
 * painting the paper before calling it produced a fully transparent page. On
 * screen that was invisible — the thumbnail strip has a white CSS background —
 * but PDF export flattens transparency onto black, so every exported page came
 * out black.
 */

import { beforeAll, describe, expect, it } from "vitest";

import { renderPageToCanvas, renderPagesForExport, thumbnailScale } from "./pageRender";
import { createDocument, createShapeUnit } from "../model/factory";
import type { AssetResolver } from "../render/renderer";

const noAssets: AssetResolver = { getImage: () => undefined };

/**
 * jsdom's canvas has no 2D backend. A minimal recording stub is enough: these
 * tests are about which pixels end up opaque, so the stub tracks fills.
 */
function installCanvasStub() {
  // One context per canvas, so the test can read back what rendering recorded.
  const contexts = new WeakMap<HTMLCanvasElement, unknown>();
  const proto = HTMLCanvasElement.prototype as unknown as Record<string, unknown>;

  proto.getContext = function (this: HTMLCanvasElement) {
    const existing = contexts.get(this);
    if (existing) return existing;

    const filled: { x: number; y: number; w: number; h: number; style: string }[] = [];
    const ctx: Record<string, unknown> = {
      canvas: this,
      fillStyle: "#000000",
      strokeStyle: "#000000",
      globalAlpha: 1,
      lineWidth: 1,
      font: "",
      fillRect(x: number, y: number, w: number, h: number) {
        filled.push({ x, y, w, h, style: String(ctx.fillStyle) });
      },
      clearRect() {
        filled.length = 0;
      },
      measureText: () => ({ width: 0 }),
      getImageData: () => ({ data: new Uint8ClampedArray(4) }),
      __filled: filled,
    };
    const proxy = new Proxy(ctx, {
      get(target, prop) {
        if (prop in target) return Reflect.get(target, prop);
        return () => undefined;
      },
      set(target, prop, value) {
        Reflect.set(target, prop, value);
        return true;
      },
    });
    contexts.set(this, proxy);
    return proxy;
  } as unknown as HTMLCanvasElement["getContext"];

  proto.toDataURL = () => "data:image/png;base64,stub";

  // jsdom ships no Path2D, and the renderer builds one per shape and stroke.
  if (!("Path2D" in globalThis)) {
    (globalThis as unknown as Record<string, unknown>).Path2D = class {
      moveTo() {}
      lineTo() {}
      rect() {}
      roundRect() {}
      ellipse() {}
      arc() {}
      quadraticCurveTo() {}
      closePath() {}
    };
  }
}

beforeAll(installCanvasStub);

function fillsOf(canvas: HTMLCanvasElement) {
  const ctx = canvas.getContext("2d") as unknown as { __filled?: unknown[] };
  return (ctx.__filled ?? []) as { x: number; y: number; w: number; h: number; style: string }[];
}

describe("renderPageToCanvas", () => {
  it("sizes the canvas to the page and scale", () => {
    const page = createDocument().pages[0];
    const canvas = renderPageToCanvas(page, { assets: noAssets, scale: 0.5 });
    expect(canvas.width).toBe(Math.round(page.paperWidth * 0.5));
    expect(canvas.height).toBe(Math.round(page.paperHeight * 0.5));
  });

  it("paints an opaque paper background, so an export is not transparent", () => {
    const page = createDocument().pages[0];
    page.paperColor = "#ffffff";

    const canvas = renderPageToCanvas(page, { assets: noAssets, scale: 0.2 });
    const fills = fillsOf(canvas);

    // Something must have filled with the paper colour after the clear;
    // otherwise the PNG is transparent and exports black.
    expect(fills.some((f) => f.style === "#ffffff")).toBe(true);
  });

  it("honours a transparent render when one is asked for", () => {
    const page = createDocument().pages[0];
    page.paperColor = "#ffffff";

    const canvas = renderPageToCanvas(page, { assets: noAssets, scale: 0.2, paper: false });
    expect(fillsOf(canvas).some((f) => f.style === "#ffffff")).toBe(false);
  });

  it("still draws page content", () => {
    const doc = createDocument();
    const shape = createShapeUnit(10, 10, 100, 80, "rect", "#1f1f1f", "#d93025");
    doc.pages[0].layers[0].units.push(shape);

    const canvas = renderPageToCanvas(doc.pages[0], { assets: noAssets, scale: 0.5 });
    expect(canvas.width).toBeGreaterThan(0);
  });
});

describe("renderPagesForExport", () => {
  it("returns one payload per page, carrying the page size", () => {
    const doc = createDocument();
    doc.pages.push(createDocument().pages[0]);

    const pages = renderPagesForExport(doc, noAssets, 150);
    expect(pages).toHaveLength(2);
    for (const page of pages) {
      expect(page.dataUrl.startsWith("data:image/png")).toBe(true);
      expect(page.width).toBeGreaterThan(0);
      expect(page.height).toBeGreaterThan(0);
    }
  });

  it("honours a page subset", () => {
    const doc = createDocument();
    doc.pages.push(createDocument().pages[0], createDocument().pages[0]);

    expect(renderPagesForExport(doc, noAssets, 150, [0, 2])).toHaveLength(2);
    // An out-of-range index is skipped rather than producing a broken page.
    expect(renderPagesForExport(doc, noAssets, 150, [0, 99])).toHaveLength(1);
  });
});

describe("thumbnailScale", () => {
  it("fits the longest edge into the budget", () => {
    const page = createDocument().pages[0];
    const scale = thumbnailScale(page, 150);
    expect(page.paperWidth * scale).toBeLessThanOrEqual(150.01);
    expect(page.paperHeight * scale).toBeLessThanOrEqual(150.01);
  });
});
