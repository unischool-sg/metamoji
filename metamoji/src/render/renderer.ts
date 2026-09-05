/**
 * The page renderer.
 *
 * docs/10 describes a retained-mode Sprite/Layer/Stage scene graph with three
 * swappable rasterisation strategies. We deliberately do not rebuild that. The
 * scene graph earned its keep on Android, where every repaint crossed a View
 * boundary; here the document tree *is* the scene graph, and we walk it
 * directly. What we keep from docs/10 is the part that actually matters for
 * responsiveness:
 *
 *   - viewport culling, so off-screen units cost nothing (docs/10 §1's
 *     dirty-rect instruction filtering, reduced to a bounds test per unit);
 *   - the wet/dry ink split, which is docs/10's "live bitmap" strategy in its
 *     useful form: committed ink is painted once onto the base canvas, and the
 *     stroke under the pen is painted alone on an overlay;
 *   - one draw-target abstraction, so screen, thumbnail and export share a
 *     single traversal (docs/10 §7's `Context` seam) — here that falls out for
 *     free because everything takes a plain CanvasRenderingContext2D.
 */

import { buildStrokePath } from "../model/stroke";
import { rectIntersects } from "../model/stroke";
import type { Layer, Page, Rect, Stroke, Unit } from "../model/types";
import { visibleWorldRect, type Viewport } from "./viewport";

/** Resolves an asset ticket to something Canvas can draw. */
export interface AssetResolver {
  getImage(ticket: string): CanvasImageSource | undefined;
}

export interface RenderOptions {
  viewport: Viewport;
  /** 1-based page number and total, for header/footer placeholders. */
  pageNumber?: number;
  pageCount?: number;
  /** Canvas size in CSS pixels. */
  viewWidth: number;
  viewHeight: number;
  assets: AssetResolver;
  /** Units to skip — used to hide a unit while it is being dragged. */
  hiddenUnitIds?: ReadonlySet<string>;
  /** Draw the paper background. Off for transparent exports. */
  paper?: boolean;
}

// ---------------------------------------------------------------------------
// Page
// ---------------------------------------------------------------------------

export function renderPage(
  ctx: CanvasRenderingContext2D,
  page: Page,
  opts: RenderOptions,
): void {
  const { viewport: vp } = opts;

  ctx.save();
  ctx.clearRect(0, 0, opts.viewWidth, opts.viewHeight);
  ctx.translate(vp.tx, vp.ty);
  ctx.scale(vp.scale, vp.scale);

  if (opts.paper !== false) drawPaper(ctx, page);

  const visible = visibleWorldRect(vp, opts.viewWidth, opts.viewHeight);

  for (const layer of page.layers) {
    if (!layer.visible) continue;
    drawLayer(ctx, layer, visible, opts);
  }

  // Drawn last so page content cannot obscure the running head and foot.
  drawFurniture(ctx, page, opts);

  ctx.restore();
}

function drawLayer(
  ctx: CanvasRenderingContext2D,
  layer: Layer,
  visible: Rect,
  opts: RenderOptions,
): void {
  for (const unit of layer.units) {
    if (opts.hiddenUnitIds?.has(unit.id)) continue;
    if (!rectIntersects(unitBounds(unit), visible)) continue;
    drawUnit(ctx, unit, visible, opts);
  }
}

export function unitBounds(unit: Unit): Rect {
  return { x: unit.x, y: unit.y, width: unit.width, height: unit.height };
}

// ---------------------------------------------------------------------------
// Paper
// ---------------------------------------------------------------------------

const RULE_SPACING = 40;
const GRID_SPACING = 40;

export function drawPaper(ctx: CanvasRenderingContext2D, page: Page): void {
  const { paperWidth: w, paperHeight: h } = page;

  ctx.save();
  ctx.fillStyle = page.paperColor;
  ctx.fillRect(0, 0, w, h);

  ctx.strokeStyle = "rgba(90, 120, 160, 0.28)";
  ctx.lineWidth = 1;

  switch (page.paperStyle) {
    case "lines":
      ctx.beginPath();
      for (let y = RULE_SPACING; y < h; y += RULE_SPACING) {
        ctx.moveTo(0, y);
        ctx.lineTo(w, y);
      }
      ctx.stroke();
      break;

    case "grid":
      ctx.beginPath();
      for (let y = GRID_SPACING; y < h; y += GRID_SPACING) {
        ctx.moveTo(0, y);
        ctx.lineTo(w, y);
      }
      for (let x = GRID_SPACING; x < w; x += GRID_SPACING) {
        ctx.moveTo(x, 0);
        ctx.lineTo(x, h);
      }
      ctx.stroke();
      break;

    case "dots":
      ctx.fillStyle = "rgba(90, 120, 160, 0.45)";
      for (let y = GRID_SPACING; y < h; y += GRID_SPACING) {
        for (let x = GRID_SPACING; x < w; x += GRID_SPACING) {
          ctx.beginPath();
          ctx.arc(x, y, 1.4, 0, Math.PI * 2);
          ctx.fill();
        }
      }
      break;

    case "blank":
      break;
  }

  ctx.restore();
}

/**
 * Header and footer text.
 *
 * `{page}` and `{pages}` are expanded here rather than stored per page, so
 * inserting a page renumbers the whole document for free.
 */
export function drawFurniture(
  ctx: CanvasRenderingContext2D,
  page: Page,
  opts: Pick<RenderOptions, "pageNumber" | "pageCount">,
): void {
  const furniture = page.furniture;
  if (!furniture?.show) return;
  if (!furniture.header && !furniture.footer) return;

  const expand = (template: string) =>
    template
      .replace(/\{page\}/g, String(opts.pageNumber ?? 1))
      .replace(/\{pages\}/g, String(opts.pageCount ?? 1));

  ctx.save();
  ctx.fillStyle = "rgba(60, 70, 85, 0.65)";
  ctx.font = "400 16px system-ui";
  ctx.textAlign = "center";

  const margin = 34;
  if (furniture.header) {
    ctx.textBaseline = "top";
    ctx.fillText(expand(furniture.header), page.paperWidth / 2, margin);
  }
  if (furniture.footer) {
    ctx.textBaseline = "bottom";
    ctx.fillText(expand(furniture.footer), page.paperWidth / 2, page.paperHeight - margin);
  }
  ctx.restore();
}

// ---------------------------------------------------------------------------
// Units
// ---------------------------------------------------------------------------

function drawUnit(
  ctx: CanvasRenderingContext2D,
  unit: Unit,
  visible: Rect,
  opts: RenderOptions,
): void {
  ctx.save();

  // Rotation is about the unit's centre, matching the selection handles.
  if (unit.rotation !== 0) {
    const cx = unit.x + unit.width / 2;
    const cy = unit.y + unit.height / 2;
    ctx.translate(cx, cy);
    ctx.rotate(unit.rotation);
    ctx.translate(-cx, -cy);
  }

  switch (unit.type) {
    case "$draw":
      drawInkUnit(ctx, unit.strokes, visible);
      break;
    case "$text":
      drawTextUnit(ctx, unit);
      break;
    case "$image":
      drawImageUnit(ctx, unit, opts.assets);
      break;
    case "$bgimage":
      drawBgImageUnit(ctx, unit, opts.assets);
      break;
    case "$pdf":
      drawPdfUnit(ctx, unit, opts.assets);
      break;
    case "$shape":
      drawShapeUnit(ctx, unit);
      break;
    case "$form":
      drawFormUnit(ctx, unit);
      break;
    case "$flipunit":
      drawFlipUnit(ctx, unit);
      break;
    case "$dummy":
      drawPlaceholder(ctx, unit, unit.degraded?.originalModelType ?? "unknown");
      break;
  }

  ctx.restore();
}

function drawInkUnit(
  ctx: CanvasRenderingContext2D,
  strokes: readonly Stroke[],
  visible: Rect,
): void {
  for (const stroke of strokes) {
    if (!rectIntersects(stroke.bounds, visible)) continue;
    drawStroke(ctx, stroke);
  }
}

export function drawStroke(ctx: CanvasRenderingContext2D, stroke: Stroke): void {
  if (stroke.points.length === 0) return;

  ctx.save();
  ctx.globalAlpha = stroke.pen.opacity;
  if (stroke.pen.penType === "highlighter") {
    // Multiply keeps overlapping highlighter passes readable instead of muddy.
    ctx.globalCompositeOperation = "multiply";
  }
  ctx.fillStyle = stroke.pen.color;
  ctx.fill(buildStrokePath(stroke));
  ctx.restore();
}

function drawTextUnit(
  ctx: CanvasRenderingContext2D,
  unit: Extract<Unit, { type: "$text" }>,
): void {
  ctx.save();

  if (unit.backgroundColor) {
    ctx.fillStyle = unit.backgroundColor;
    ctx.fillRect(unit.x, unit.y, unit.width, unit.height);
  }
  if (unit.borderColor) {
    ctx.strokeStyle = unit.borderColor;
    ctx.lineWidth = 1;
    ctx.strokeRect(unit.x, unit.y, unit.width, unit.height);
  }

  ctx.fillStyle = unit.color;
  ctx.font = cssFont(unit);
  ctx.textBaseline = "top";
  ctx.textAlign = unit.align === "center" ? "center" : unit.align === "right" ? "right" : "left";

  const padding = 6;
  const lineHeight = unit.fontSize * unit.lineHeight;
  const maxWidth = unit.width - padding * 2;
  const originX =
    unit.align === "center"
      ? unit.x + unit.width / 2
      : unit.align === "right"
        ? unit.x + unit.width - padding
        : unit.x + padding;

  let y = unit.y + padding;
  for (const line of wrapText(ctx, unit.text, maxWidth)) {
    ctx.fillText(line, originX, y);
    if (unit.underline && line.length > 0) {
      const w = ctx.measureText(line).width;
      const ux =
        unit.align === "center" ? originX - w / 2 : unit.align === "right" ? originX - w : originX;
      ctx.fillRect(ux, y + unit.fontSize * 1.05, w, Math.max(1, unit.fontSize / 16));
    }
    y += lineHeight;
  }

  ctx.restore();
}

export function cssFont(unit: Extract<Unit, { type: "$text" }>): string {
  const style = unit.italic ? "italic " : "";
  const weight = unit.bold ? "700 " : "400 ";
  return `${style}${weight}${unit.fontSize}px ${unit.fontFamily}`;
}

/**
 * Greedy word wrap with a per-character fallback, so CJK text — which has no
 * spaces — still wraps instead of overflowing the unit.
 */
export function wrapText(
  ctx: CanvasRenderingContext2D,
  text: string,
  maxWidth: number,
): string[] {
  const out: string[] = [];
  if (maxWidth <= 0) return text.split("\n");

  for (const paragraph of text.split("\n")) {
    if (paragraph === "") {
      out.push("");
      continue;
    }
    let line = "";
    for (const ch of paragraph) {
      const candidate = line + ch;
      if (ctx.measureText(candidate).width > maxWidth && line !== "") {
        // Prefer breaking at the last space, if there is a usable one.
        const lastSpace = line.lastIndexOf(" ");
        if (lastSpace > 0 && line.length - lastSpace < 20) {
          out.push(line.slice(0, lastSpace));
          line = line.slice(lastSpace + 1) + ch;
        } else {
          out.push(line);
          line = ch;
        }
      } else {
        line = candidate;
      }
    }
    out.push(line);
  }
  return out;
}

function drawImageUnit(
  ctx: CanvasRenderingContext2D,
  unit: Extract<Unit, { type: "$image" }>,
  assets: AssetResolver,
): void {
  const img = assets.getImage(unit.imageTicket);
  if (!img) {
    drawPlaceholder(ctx, unit, "image");
    return;
  }
  ctx.save();
  ctx.globalAlpha = unit.opacity;
  if (unit.hasShadow) {
    ctx.shadowColor = "rgba(0,0,0,0.3)";
    ctx.shadowBlur = 12;
    ctx.shadowOffsetY = 4;
  }
  ctx.drawImage(img, unit.x, unit.y, unit.width, unit.height);
  ctx.restore();
}

function drawBgImageUnit(
  ctx: CanvasRenderingContext2D,
  unit: Extract<Unit, { type: "$bgimage" }>,
  assets: AssetResolver,
): void {
  ctx.save();
  ctx.globalAlpha = unit.colorOpacity;
  ctx.fillStyle = unit.bgColor;
  ctx.fillRect(unit.x, unit.y, unit.width, unit.height);

  const img = assets.getImage(unit.imageTicket);
  if (img) {
    ctx.globalAlpha = unit.opacity;
    ctx.drawImage(img, unit.x, unit.y, unit.width, unit.height);
  }
  ctx.restore();
}

function drawPdfUnit(
  ctx: CanvasRenderingContext2D,
  unit: Extract<Unit, { type: "$pdf" }>,
  assets: AssetResolver,
): void {
  const raster = unit.rasterTicket ? assets.getImage(unit.rasterTicket) : undefined;
  if (!raster) {
    drawPlaceholder(ctx, unit, `PDF p.${unit.page}`);
    return;
  }
  ctx.save();
  ctx.drawImage(raster, unit.x, unit.y, unit.width, unit.height);
  ctx.restore();
}

function drawShapeUnit(
  ctx: CanvasRenderingContext2D,
  unit: Extract<Unit, { type: "$shape" }>,
): void {
  const { x, y, width: w, height: h } = unit;
  ctx.save();
  ctx.lineWidth = unit.strokeWidth;
  ctx.strokeStyle = unit.strokeColor;
  ctx.lineJoin = "round";
  ctx.lineCap = "round";
  if (unit.dashed) ctx.setLineDash([unit.strokeWidth * 3, unit.strokeWidth * 2]);

  const path = new Path2D();
  switch (unit.shape) {
    case "rect":
      path.rect(x, y, w, h);
      break;
    case "roundRect": {
      // Clamp so the radius cannot exceed half the shorter side, which would
      // otherwise produce an inverted corner.
      const r = Math.min(unit.cornerRadius, Math.min(w, h) / 2);
      path.roundRect(x, y, w, h, r);
      break;
    }
    case "ellipse":
      path.ellipse(x + w / 2, y + h / 2, Math.abs(w / 2), Math.abs(h / 2), 0, 0, Math.PI * 2);
      break;
    case "triangle":
      path.moveTo(x + w / 2, y);
      path.lineTo(x + w, y + h);
      path.lineTo(x, y + h);
      path.closePath();
      break;
    case "diamond":
      path.moveTo(x + w / 2, y);
      path.lineTo(x + w, y + h / 2);
      path.lineTo(x + w / 2, y + h);
      path.lineTo(x, y + h / 2);
      path.closePath();
      break;
    case "line":
      path.moveTo(x, y);
      path.lineTo(x + w, y + h);
      break;
    case "arrow": {
      path.moveTo(x, y);
      path.lineTo(x + w, y + h);
      // Arrow head sized from the stroke width so it scales with the line.
      const angle = Math.atan2(h, w);
      const head = Math.max(8, unit.strokeWidth * 4);
      const tipX = x + w;
      const tipY = y + h;
      for (const spread of [Math.PI - 0.4, Math.PI + 0.4]) {
        path.moveTo(tipX, tipY);
        path.lineTo(tipX + head * Math.cos(angle + spread), tipY + head * Math.sin(angle + spread));
      }
      break;
    }
  }

  const closed = unit.shape !== "line" && unit.shape !== "arrow";
  if (closed && unit.fillColor) {
    ctx.globalAlpha = unit.fillOpacity;
    ctx.fillStyle = unit.fillColor;
    ctx.fill(path);
    ctx.globalAlpha = 1;
  }
  if (unit.strokeWidth > 0) ctx.stroke(path);
  ctx.restore();
}

function drawFormUnit(
  ctx: CanvasRenderingContext2D,
  unit: Extract<Unit, { type: "$form" }>,
): void {
  const { x, y, width: w, height: h } = unit;
  ctx.save();

  if (unit.backgroundColor) {
    ctx.globalAlpha = unit.backgroundOpacity;
    ctx.fillStyle = unit.backgroundColor;
    ctx.fillRect(x, y, w, h);
    ctx.globalAlpha = 1;
  }

  ctx.strokeStyle = unit.lineColor;
  ctx.lineWidth = unit.lineWidth;
  const path = new Path2D();

  const rows = Math.max(1, unit.rows);
  const cols = Math.max(1, unit.columns);

  // Interior horizontal lines. All three form kinds have them.
  for (let r = 1; r < rows; r++) {
    const ly = y + (h / rows) * r;
    path.moveTo(x, ly);
    path.lineTo(x + w, ly);
  }
  // Vertical lines, for grids and tables only — a ruled sheet has none.
  if (unit.form !== "ruled") {
    for (let c = 1; c < cols; c++) {
      const lx = x + (w / cols) * c;
      path.moveTo(lx, y);
      path.lineTo(lx, y + h);
    }
  }
  // A table is enclosed by a border; a ruled or grid overlay is not.
  if (unit.form === "table") path.rect(x, y, w, h);

  ctx.stroke(path);
  ctx.restore();
}

function drawFlipUnit(
  ctx: CanvasRenderingContext2D,
  unit: Extract<Unit, { type: "$flipunit" }>,
): void {
  ctx.save();
  ctx.shadowColor = "rgba(0,0,0,0.18)";
  ctx.shadowBlur = 8;
  ctx.shadowOffsetY = 3;
  ctx.fillStyle = unit.backgroundColor;
  ctx.fillRect(unit.x, unit.y, unit.width, unit.height);
  ctx.shadowColor = "transparent";

  ctx.fillStyle = unit.color;
  ctx.font = `400 ${unit.fontSize}px system-ui`;
  ctx.textBaseline = "top";
  ctx.textAlign = "left";

  const text = unit.flipState === 0 ? unit.frontText : unit.backText;
  const padding = 12;
  let y = unit.y + padding;
  for (const line of wrapText(ctx, text, unit.width - padding * 2)) {
    ctx.fillText(line, unit.x + padding, y);
    y += unit.fontSize * 1.45;
  }

  // A small corner tab hints that the note has a back side.
  ctx.fillStyle = "rgba(0,0,0,0.10)";
  ctx.beginPath();
  ctx.moveTo(unit.x + unit.width, unit.y + unit.height - 18);
  ctx.lineTo(unit.x + unit.width, unit.y + unit.height);
  ctx.lineTo(unit.x + unit.width - 18, unit.y + unit.height);
  ctx.closePath();
  ctx.fill();

  ctx.restore();
}

/**
 * Visible stand-in for content we could not render — a missing asset, or a unit
 * type this build does not implement. The original app has the same idea in its
 * `$dummy` unit (docs/05 §4): make the gap visible rather than silently drop it.
 */
function drawPlaceholder(ctx: CanvasRenderingContext2D, unit: Unit, label: string): void {
  ctx.save();
  ctx.fillStyle = "rgba(120, 130, 145, 0.10)";
  ctx.fillRect(unit.x, unit.y, unit.width, unit.height);
  ctx.strokeStyle = "rgba(120, 130, 145, 0.55)";
  ctx.lineWidth = 1;
  ctx.setLineDash([6, 4]);
  ctx.strokeRect(unit.x + 0.5, unit.y + 0.5, unit.width - 1, unit.height - 1);
  ctx.setLineDash([]);

  ctx.fillStyle = "rgba(90, 100, 115, 0.85)";
  ctx.font = "400 13px system-ui";
  ctx.textAlign = "center";
  ctx.textBaseline = "middle";
  ctx.fillText(label, unit.x + unit.width / 2, unit.y + unit.height / 2);
  ctx.restore();
}
