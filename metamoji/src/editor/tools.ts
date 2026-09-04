/**
 * Tools and pen presets.
 *
 * The pen-type set follows docs/09 §3, which catalogues the original's
 * `button_pentype_*` drawables. Recognition-related tools are absent by design —
 * this build captures, stores and renders ink but does not recognise it.
 */

import type { PenAttributes, PenType } from "../model/types";

export type ToolId =
  | "pen"
  | "eraser"
  | "select"
  | "lasso"
  | "pan"
  | "text"
  | "sticky"
  | "image"
  | "shape"
  | "form"
  | "laser";

export interface ToolDef {
  id: ToolId;
  label: string;
  shortcut: string;
  cursor: string;
}

export const TOOLS: ToolDef[] = [
  { id: "pen", label: "ペン", shortcut: "P", cursor: "crosshair" },
  { id: "eraser", label: "消しゴム", shortcut: "E", cursor: "cell" },
  { id: "select", label: "選択", shortcut: "V", cursor: "default" },
  { id: "lasso", label: "なげなわ", shortcut: "L", cursor: "crosshair" },
  { id: "text", label: "テキスト", shortcut: "T", cursor: "text" },
  { id: "sticky", label: "付箋", shortcut: "N", cursor: "copy" },
  { id: "shape", label: "図形", shortcut: "S", cursor: "crosshair" },
  { id: "form", label: "表・罫線", shortcut: "F", cursor: "crosshair" },
  { id: "image", label: "画像", shortcut: "I", cursor: "copy" },
  { id: "laser", label: "レーザー", shortcut: "R", cursor: "crosshair" },
  { id: "pan", label: "移動", shortcut: "H", cursor: "grab" },
];

/** Tools that place a unit by dragging out its frame. */
export const DRAG_TO_PLACE_TOOLS: ReadonlySet<ToolId> = new Set(["shape", "form"]);

/** Tools that place a unit with a single tap. */
export const TAP_TO_PLACE_TOOLS: ReadonlySet<ToolId> = new Set([
  "text",
  "sticky",
  "image",
]);

export interface PenPreset extends PenAttributes {
  id: string;
  label: string;
}

export const PEN_PRESETS: PenPreset[] = [
  {
    id: "ballpoint",
    label: "ボールペン",
    penType: "ballpoint",
    color: "#1f1f1f",
    width: 2.4,
    opacity: 1,
    pressureSensitivity: 0.45,
  },
  {
    id: "fountain",
    label: "万年筆",
    penType: "fountain",
    color: "#16325c",
    width: 3.6,
    opacity: 1,
    pressureSensitivity: 0.95,
  },
  {
    id: "pencil",
    label: "鉛筆",
    penType: "pencil",
    color: "#4a4a4a",
    width: 2.0,
    opacity: 0.85,
    pressureSensitivity: 0.7,
  },
  {
    id: "marker",
    label: "マーカー",
    penType: "marker",
    color: "#d93025",
    width: 6.0,
    opacity: 1,
    pressureSensitivity: 0.2,
  },
  {
    id: "highlighter",
    label: "蛍光ペン",
    penType: "highlighter",
    color: "#ffe14d",
    width: 22,
    opacity: 0.42,
    pressureSensitivity: 0,
  },
];

export const PEN_COLORS = [
  "#1f1f1f",
  "#d93025",
  "#1a73e8",
  "#188038",
  "#f29900",
  "#9334e6",
  "#ffe14d",
  "#ffffff",
];

export const PEN_WIDTHS = [1.2, 2.4, 4, 6, 10, 16];

/** Eraser sizes, in document units. */
export const ERASER_SIZES = [8, 16, 32, 64];

/** Colour and width, remembered per pen slot. */
export interface PenSlotSettings {
  color: string;
  width: number;
}

/**
 * Each pen slot keeps its own colour and width, the way the original's seven
 * quick-access pen buttons do (docs/09 §3). Sharing one colour across all pens
 * would mean picking the highlighter always turned it black, or picking black
 * turned the highlighter black too — both are wrong.
 */
export function defaultPenSettings(): Record<string, PenSlotSettings> {
  return Object.fromEntries(
    PEN_PRESETS.map((p) => [p.id, { color: p.color, width: p.width }]),
  );
}

export function penFromPreset(preset: PenPreset, settings: PenSlotSettings): PenAttributes {
  return {
    penType: preset.penType,
    color: settings.color,
    width: settings.width,
    opacity: preset.opacity,
    pressureSensitivity: preset.pressureSensitivity,
  };
}

export function defaultPenType(): PenType {
  return "ballpoint";
}
