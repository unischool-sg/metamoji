/**
 * Regression tests for the clear-then-paint order in `renderPage`.
 *
 * The bug: `renderPage` clears the canvas as its first act, so a caller that
 * painted the workspace colour and the sheet's drop shadow *before* calling it
 * had both wiped. The editor's scene canvas is created with `alpha: false`, and
 * an opaque canvas clears to **black** — so the workspace was black rather than
 * the Material surface colour, and the sheet had no shadow. Nothing threw and
 * nothing looked obviously broken; a dark workspace is a plausible design.
 *
 * `io/pageRender.test.ts` covers the same trap on the export path, where it
 * produced all-black PDF pages.
 */

import { describe, expect, it } from "vitest";

import { renderPage } from "./renderer";
import { createDocument } from "../model/factory";

interface Call {
  op: string;
  style?: string;
}

/**
 * jsdom has no 2D backend. These tests are about the *order* of operations, so
 * the stub records the calls that put pixels down and nothing else.
 */
function recordingContext(): { ctx: CanvasRenderingContext2D; calls: Call[] } {
  const calls: Call[] = [];
  const state: Record<string, unknown> = { fillStyle: "#000000", strokeStyle: "#000000" };

  const target: Record<string, unknown> = {
    clearRect: () => calls.push({ op: "clearRect" }),
    fillRect: () => calls.push({ op: "fillRect", style: String(state.fillStyle) }),
    measureText: () => ({ width: 0 }),
  };

  const ctx = new Proxy(target, {
    get(base, prop: string) {
      if (prop in base) return Reflect.get(base, prop);
      if (prop in state) return state[prop];
      return () => undefined;
    },
    set(_base, prop: string, value) {
      state[prop] = value;
      return true;
    },
  }) as unknown as CanvasRenderingContext2D;

  return { ctx, calls };
}

const page = () => createDocument("t").pages[0];

function render(opts: Partial<Parameters<typeof renderPage>[2]>) {
  const { ctx, calls } = recordingContext();
  renderPage(ctx, page(), {
    viewport: { scale: 1, tx: 0, ty: 0 },
    viewWidth: 800,
    viewHeight: 600,
    assets: { getImage: () => undefined },
    ...opts,
  });
  return calls;
}

describe("renderPage", () => {
  it("paints the background after the clear, not before", () => {
    const calls = render({ background: "#d7dae2" });

    const cleared = calls.findIndex((c) => c.op === "clearRect");
    const background = calls.findIndex((c) => c.style === "#d7dae2");

    expect(cleared).toBeGreaterThanOrEqual(0);
    expect(background).toBeGreaterThan(cleared);
  });

  it("puts the background under the paper", () => {
    const calls = render({ background: "#d7dae2" });

    const background = calls.findIndex((c) => c.style === "#d7dae2");
    const paper = calls.findIndex((c) => c.style === page().paperColor);

    // Otherwise the workspace colour would cover the sheet.
    expect(paper).toBeGreaterThan(background);
  });

  it("draws nothing before the clear when no background is asked for", () => {
    const calls = render({});
    expect(calls[0].op).toBe("clearRect");
    expect(calls.some((c) => c.style === "#d7dae2")).toBe(false);
  });

  it("draws the sheet's shadow only when asked", () => {
    // The shadow is a filled copy of the sheet, so it shows up as one extra
    // paper-coloured fill before the paper itself.
    const paperFills = (calls: Call[]) =>
      calls.filter((c) => c.style === page().paperColor).length;

    expect(paperFills(render({ pageShadow: true }))).toBe(
      paperFills(render({})) + 1,
    );
  });
});
