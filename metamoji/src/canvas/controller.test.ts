/**
 * Regression tests for the two failures found while driving the real editor.
 *
 * Both were silent: the app looked like it worked, but the page was at the
 * wrong zoom and every placement landed at the wrong coordinates.
 */

import { beforeEach, describe, expect, it, vi } from "vitest";

import { CanvasController, type ToolMode } from "./controller";
import { EditSession } from "../editor/session";
import { A4_WIDTH, A4_HEIGHT, createDocument } from "../model/factory";
import type { Point } from "../model/types";

/**
 * jsdom has no canvas backend, so the drawing calls need somewhere to go. The
 * controller's geometry — which is what these tests are about — does not care
 * what the context does with them.
 */
function stubContext(): CanvasRenderingContext2D {
  return new Proxy(
    {
      canvas: null,
      setTransform: () => {},
      measureText: () => ({ width: 0 }),
    } as unknown as CanvasRenderingContext2D,
    {
      get(target, prop) {
        const existing = Reflect.get(target, prop);
        if (existing !== undefined) return existing;
        return () => undefined;
      },
      set: () => true,
    },
  );
}

/** A canvas whose parent reports the size we choose. */
function makeCanvas(parentWidth: number, parentHeight: number) {
  const parent = document.createElement("div");
  parent.getBoundingClientRect = () =>
    ({ width: parentWidth, height: parentHeight, left: 0, top: 0 }) as DOMRect;

  const canvas = document.createElement("canvas");
  canvas.getContext = (() => stubContext()) as unknown as HTMLCanvasElement["getContext"];
  canvas.getBoundingClientRect = () =>
    ({ width: parentWidth, height: parentHeight, left: 0, top: 0 }) as DOMRect;
  Object.defineProperty(canvas, "clientWidth", {
    get: () => (canvas.style.width ? parseFloat(canvas.style.width) : 0),
    configurable: true,
  });
  Object.defineProperty(canvas, "clientHeight", {
    get: () => (canvas.style.height ? parseFloat(canvas.style.height) : 0),
    configurable: true,
  });
  parent.appendChild(canvas);
  return { canvas, parent };
}

function setup(width: number, height: number) {
  const placements: { tool: ToolMode; world: Point }[] = [];
  const controller = new CanvasController({
    onSelectionChange: () => {},
    onViewportChange: () => {},
    onPlace: (tool, world) => placements.push({ tool, world }),
    onEditText: () => {},
  });

  const scene = makeCanvas(width, height);
  const overlayEl = makeCanvas(width, height);
  // Both canvases must share a parent for the size lookup to be consistent.
  scene.parent.appendChild(overlayEl.canvas);

  return { controller, scene: scene.canvas, overlay: overlayEl.canvas, placements };
}

beforeEach(() => {
  vi.stubGlobal("requestAnimationFrame", () => 1);
  vi.stubGlobal("cancelAnimationFrame", () => {});
  vi.stubGlobal("devicePixelRatio", 2);
});

describe("CanvasController viewport", () => {
  it("fits the page once the canvas is given a real size", () => {
    // The container starts collapsed — what happens when a note opens while the
    // window is still laying out, or while the view is hidden.
    const { controller, scene, overlay } = setup(0, 0);
    const doc = createDocument();
    const session = new EditSession(doc);

    controller.attach(scene, overlay);
    controller.setDocument(doc, 0, session);

    // Nothing to fit against yet, so the viewport must stay untouched rather
    // than be computed from the 300x150 default canvas.
    expect(controller.getViewport()).toEqual({ scale: 1, tx: 0, ty: 0 });

    // The ResizeObserver reports a real size.
    scene.parentElement!.getBoundingClientRect = () =>
      ({ width: 984, height: 642, left: 0, top: 0 }) as DOMRect;
    controller.resize();

    const vp = controller.getViewport();
    expect(vp.scale).toBeGreaterThan(0.1);
    expect(vp.scale).toBeLessThan(1);
    // Centred horizontally, with the page fully inside the view.
    expect(vp.tx).toBeCloseTo((984 - A4_WIDTH * vp.scale) / 2, 1);
    expect(A4_HEIGHT * vp.scale).toBeLessThanOrEqual(642);
  });

  it("fits when the document arrives after the canvas was already sized", () => {
    const { controller, scene, overlay } = setup(984, 642);
    controller.attach(scene, overlay);
    expect(controller.getViewport().scale).toBe(1);

    const doc = createDocument();
    controller.setDocument(doc, 0, new EditSession(doc));
    expect(controller.getViewport().scale).toBeLessThan(1);
  });

  it("does not re-fit on later edits, so the user's zoom is not thrown away", () => {
    const { controller, scene, overlay } = setup(984, 642);
    const doc = createDocument();
    controller.attach(scene, overlay);
    controller.setDocument(doc, 0, new EditSession(doc));

    controller.zoomBy(2);
    const zoomed = controller.getViewport().scale;

    // Every edit produces a new document object; that must not re-fit.
    controller.setDocument({ ...doc, revision: 1 }, 0, new EditSession(doc));
    expect(controller.getViewport().scale).toBe(zoomed);
  });

  it("converts a tap into world coordinates, not screen coordinates", () => {
    const { controller, scene, overlay, placements } = setup(984, 642);
    const doc = createDocument();
    controller.attach(scene, overlay);
    controller.setDocument(doc, 0, new EditSession(doc));
    controller.setTool("text");

    const vp = controller.getViewport();
    const screen = { x: 300, y: 260 };

    overlay.dispatchEvent(
      new PointerEvent("pointerdown", {
        pointerId: 1,
        button: 0,
        buttons: 1,
        clientX: screen.x,
        clientY: screen.y,
        bubbles: true,
      }),
    );

    expect(placements).toHaveLength(1);
    // The placement must be the inverse viewport transform of the tap, which is
    // only the same as the tap itself at identity zoom.
    expect(placements[0].world.x).toBeCloseTo((screen.x - vp.tx) / vp.scale, 3);
    expect(placements[0].world.y).toBeCloseTo((screen.y - vp.ty) / vp.scale, 3);
    expect(placements[0].world.x).not.toBeCloseTo(screen.x, 1);
  });

  it("starts the gesture even when pointer capture is refused", () => {
    const { controller, scene, overlay, placements } = setup(984, 642);
    const doc = createDocument();
    controller.attach(scene, overlay);
    controller.setDocument(doc, 0, new EditSession(doc));
    controller.setTool("text");

    // A pointer that is no longer active makes setPointerCapture throw. Letting
    // that propagate would abort pointerdown and the tap would do nothing.
    overlay.setPointerCapture = () => {
      throw new DOMException("No active pointer with the given id", "NotFoundError");
    };

    expect(() =>
      overlay.dispatchEvent(
        new PointerEvent("pointerdown", {
          pointerId: 99,
          button: 0,
          buttons: 1,
          clientX: 200,
          clientY: 200,
          bubbles: true,
        }),
      ),
    ).not.toThrow();

    expect(placements).toHaveLength(1);
  });

  it("zooms about a point without moving the world point under it", () => {
    const { controller, scene, overlay } = setup(984, 642);
    const doc = createDocument();
    controller.attach(scene, overlay);
    controller.setDocument(doc, 0, new EditSession(doc));

    const before = controller.getViewport();
    const anchorWorld = {
      x: (400 - before.tx) / before.scale,
      y: (300 - before.ty) / before.scale,
    };

    overlay.dispatchEvent(
      new WheelEvent("wheel", {
        deltaY: -200,
        ctrlKey: true,
        clientX: 400,
        clientY: 300,
        bubbles: true,
        cancelable: true,
      }),
    );

    const after = controller.getViewport();
    expect(after.scale).toBeGreaterThan(before.scale);
    expect((400 - after.tx) / after.scale).toBeCloseTo(anchorWorld.x, 3);
    expect((300 - after.ty) / after.scale).toBeCloseTo(anchorWorld.y, 3);
  });
});
