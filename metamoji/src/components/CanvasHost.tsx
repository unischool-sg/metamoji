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
import type { ModelId, Point } from "../model/types";
import { useEditorStore } from "../store/editorStore";

interface Props {
  controllerRef: React.MutableRefObject<CanvasController | null>;
  assets: AssetResolver;
  onPlace: (tool: ToolMode, world: Point) => void;
  onEditText: (unitId: ModelId) => void;
}

export function CanvasHost({ controllerRef, assets, onPlace, onEditText }: Props) {
  const sceneRef = useRef<HTMLCanvasElement>(null);
  const overlayRef = useRef<HTMLCanvasElement>(null);
  const containerRef = useRef<HTMLDivElement>(null);

  // Callbacks are read through a ref so that changing them never tears down the
  // controller — remounting it mid-session would drop the viewport and any
  // in-flight gesture.
  const handlers = useRef({ onPlace, onEditText });
  handlers.current = { onPlace, onEditText };

  const doc = useEditorStore((s) => s.doc);
  const session = useEditorStore((s) => s.session);
  const pageIndex = useEditorStore((s) => s.pageIndex);
  const activeTool = useEditorStore((s) => s.activeTool);
  const selection = useEditorStore((s) => s.selection);
  const eraserSize = useEditorStore((s) => s.eraserSize);
  const penPresetId = useEditorStore((s) => s.penPresetId);
  const penColor = useEditorStore((s) => s.penColor);
  const penWidth = useEditorStore((s) => s.penWidth);
  const setSelection = useEditorStore((s) => s.setSelection);

  // Created inside the effect, not in a ref initialiser: React StrictMode
  // double-invokes render, and a controller built there would leak a second
  // rAF loop and a second set of pointer listeners.
  useEffect(() => {
    const scene = sceneRef.current;
    const overlay = overlayRef.current;
    if (!scene || !overlay) return;

    const controller = new CanvasController({
      onSelectionChange: (ids) => setSelection(ids),
      onViewportChange: () => {},
      onPlace: (tool, world) => handlers.current.onPlace(tool, world),
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
  }, [controllerRef, setSelection]);

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
  }, [controllerRef, penPresetId, penColor, penWidth]);

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
