/**
 * Mounts the canvas controller and keeps it fed with store state.
 *
 * This is the only component that touches canvas DOM, and it renders exactly
 * twice: on mount, and when the container resizes. Everything else reaches the
 * canvas through imperative calls on the controller.
 */

import { useEffect, useRef } from "react";

import { CanvasController, type ToolMode } from "../canvas/controller";
import type { AssetResolver } from "../render/renderer";
import type { ModelId, Point, Rect } from "../model/types";
import type { Viewport } from "../render/viewport";
import { useEditorStore } from "../store/editorStore";

interface Props {
  controllerRef: React.MutableRefObject<CanvasController | null>;
  assets: AssetResolver;
  onPlace: (tool: ToolMode, world: Point) => void;
  onPlaceFrame: (tool: ToolMode, frame: Rect) => void;
  onEditText: (unitId: ModelId) => void;
  onViewportChange: (viewport: Viewport) => void;
}

export function CanvasHost({
  controllerRef,
  assets,
  onPlace,
  onPlaceFrame,
  onEditText,
  onViewportChange,
}: Props) {
  const sceneRef = useRef<HTMLCanvasElement>(null);
  const overlayRef = useRef<HTMLCanvasElement>(null);
  const containerRef = useRef<HTMLDivElement>(null);

  // Callbacks are read through a ref so that changing them never tears down the
  // controller — remounting it mid-session would drop the viewport and any
  // in-flight gesture.
  const handlers = useRef({ onPlace, onPlaceFrame, onEditText, onViewportChange });
  handlers.current = { onPlace, onPlaceFrame, onEditText, onViewportChange };

  const doc = useEditorStore((s) => s.doc);
  const session = useEditorStore((s) => s.session);
  const pageIndex = useEditorStore((s) => s.pageIndex);
  const activeTool = useEditorStore((s) => s.activeTool);
  const selection = useEditorStore((s) => s.selection);
  const eraserSize = useEditorStore((s) => s.eraserSize);
  const penPresetId = useEditorStore((s) => s.penPresetId);
  const penSettings = useEditorStore((s) => s.penSettings);
  const setSelection = useEditorStore((s) => s.setSelection);
  const setTool = useEditorStore((s) => s.setTool);

  // Created inside the effect, not in a ref initialiser: React StrictMode
  // double-invokes render, and a controller built there would leak a second
  // rAF loop and a second set of pointer listeners.
  useEffect(() => {
    const scene = sceneRef.current;
    const overlay = overlayRef.current;
    if (!scene || !overlay) return;

    const controller = new CanvasController({
      onSelectionChange: (ids) => setSelection(ids),
      onViewportChange: (vp) => handlers.current.onViewportChange(vp),
      onPlace: (tool, world) => handlers.current.onPlace(tool, world),
      onPlaceFrame: (tool, frame) => handlers.current.onPlaceFrame(tool, frame),
      onRequestTool: (tool) => setTool(tool),
      onEditText: (unitId) => handlers.current.onEditText(unitId),
    });
    controller.attach(scene, overlay);
    controllerRef.current = controller;

    const observer = new ResizeObserver(() => controller.resize());
    if (containerRef.current) observer.observe(containerRef.current);

    return () => {
      observer.disconnect();
      controller.dispose();
      controllerRef.current = null;
    };
  }, [controllerRef, setSelection, setTool]);

  useEffect(() => {
    controllerRef.current?.setDocument(doc, pageIndex, session);
  }, [controllerRef, doc, pageIndex, session]);

  useEffect(() => {
    controllerRef.current?.setTool(activeTool);
  }, [controllerRef, activeTool]);

  useEffect(() => {
    controllerRef.current?.setSelection(selection);
  }, [controllerRef, selection]);

  useEffect(() => {
    controllerRef.current?.setEraserSize(eraserSize);
  }, [controllerRef, eraserSize]);

  useEffect(() => {
    controllerRef.current?.setPen(useEditorStore.getState().currentPen());
  }, [controllerRef, penPresetId, penSettings]);

  useEffect(() => {
    controllerRef.current?.setAssets(assets);
  }, [controllerRef, assets]);

  return (
    <div className="canvas-area" ref={containerRef}>
      <canvas ref={sceneRef} />
      <canvas ref={overlayRef} className="canvas-area__overlay" />
    </div>
  );
}
