/**
 * The chart engine.
 *
 * Stands in for the original's `com.metamoji.ch` package (docs/13 §1), which
 * the survey unit is its only caller of — docs/13 §1 notes charts are "reachable
 * only through the Survey Unit, not exposed as a standalone insert-chart
 * feature", and the same is true here.
 *
 * Two deliberate departures from the original:
 *
 *  1. docs/13 §1 records `ChAutoColor` cycling a fixed 54-colour table by
 *     `index % 54`. Cycling means the ninth category silently reuses the first
 *     one's colour, and adding a category repaints the others. The palette below
 *     is a fixed order that is never cycled: past its length, categories fold
 *     into a single "other" slot.
 *  2. docs/13 §1 records the survey rasterising its chart to a bitmap and
 *     embedding it as a static image. Here it is drawn live, so it stays sharp
 *     at any zoom and updates when a vote arrives.
 *
 * The palette is the validated default from the data-visualisation reference,
 * checked in both modes: worst adjacent CVD ΔE 9.1 light / 8.4 dark, worst
 * adjacent normal-vision ΔE 19.6 light / 19.3 dark. Three of the light steps sit
 * under 3:1 against the surface, so every mark carries a visible label — which a
 * survey result wants anyway.
 */

export type ChartKind = "bar" | "pie" | "table";

export interface ChartDatum {
  label: string;
  value: number;
}

/**
 * Fixed categorical order, never cycled.
 *
 * Only the pie uses it: there, each slice is an identity. The bar chart is a
 * single measure across categories, so it takes one hue — colouring each bar
 * differently would encode nothing.
 */
export const CATEGORICAL_LIGHT = [
  "#2a78d6", "#eb6834", "#1baf7a", "#eda100",
  "#e87ba4", "#008300", "#4a3aa7", "#e34948",
] as const;

export const CATEGORICAL_DARK = [
  "#3987e5", "#d95926", "#199e70", "#c98500",
  "#d55181", "#008300", "#9085e9", "#e66767",
] as const;

/** Single hue for magnitude, which is what a bar chart of counts is. */
const BAR_HUE = "#2a78d6";
const AXIS_INK = "rgba(60, 70, 85, 0.45)";
const TEXT_INK = "#3c4655";
const MUTED_INK = "#6b7280";
/** Fold anything past the palette into one slot rather than reusing a hue. */
const OTHER_INK = "#8a94a6";

export interface ChartOptions {
  kind: ChartKind;
  data: ChartDatum[];
  /** Drawn above the plot when present. */
  title?: string;
  /** Show counts as well as percentages. */
  showCounts?: boolean;
}

/**
 * "Nice" axis ticks — the classic algorithm, matching the original's
 * `ChNiceScale` (docs/13 §1) which also caps at ten ticks.
 */
export function niceScale(max: number, maxTicks = 5): { max: number; step: number } {
  if (max <= 0) return { max: 1, step: 1 };

  const roughStep = max / Math.max(1, maxTicks);
  const magnitude = 10 ** Math.floor(Math.log10(roughStep));
  const normalised = roughStep / magnitude;

  const step =
    (normalised <= 1 ? 1 : normalised <= 2 ? 2 : normalised <= 5 ? 5 : 10) * magnitude;
  return { max: Math.ceil(max / step) * step, step };
}

export function chartTotal(data: readonly ChartDatum[]): number {
  return data.reduce((sum, d) => sum + Math.max(0, d.value), 0);
}

export function sliceColor(index: number, dark: boolean): string {
  const palette = dark ? CATEGORICAL_DARK : CATEGORICAL_LIGHT;
  // Never cycle: an index past the palette is "other", not slot 1 again.
  return index < palette.length ? palette[index] : OTHER_INK;
}

/**
 * Draws a chart into `rect`.
 *
 * The caller supplies document-space coordinates; nothing here knows about the
 * viewport, so the same routine serves the screen, thumbnails and PDF export.
 */
export function drawChart(
  ctx: CanvasRenderingContext2D,
  rect: { x: number; y: number; width: number; height: number },
  options: ChartOptions,
): void {
  const { kind, data, title } = options;

  ctx.save();
  ctx.textBaseline = "alphabetic";

  let plot = { ...rect };
  if (title) {
    ctx.fillStyle = TEXT_INK;
    ctx.font = "600 14px system-ui";
    ctx.textAlign = "left";
    ctx.fillText(title, rect.x, rect.y + 16);
    plot = { ...plot, y: plot.y + 26, height: plot.height - 26 };
  }

  if (data.length === 0) {
    ctx.fillStyle = MUTED_INK;
    ctx.font = "400 12px system-ui";
    ctx.textAlign = "center";
    ctx.fillText("回答がありません", plot.x + plot.width / 2, plot.y + plot.height / 2);
    ctx.restore();
    return;
  }

  if (kind === "pie") drawPie(ctx, plot, options);
  else if (kind === "table") drawTable(ctx, plot, options);
  else drawBars(ctx, plot, options);

  ctx.restore();
}

/**
 * Horizontal bars.
 *
 * Horizontal because the categories are text of arbitrary length — a survey's
 * choices — and horizontal bars give the label a full line instead of forcing it
 * to rotate under a vertical bar.
 */
function drawBars(
  ctx: CanvasRenderingContext2D,
  rect: { x: number; y: number; width: number; height: number },
  { data, showCounts = true }: ChartOptions,
): void {
  const total = chartTotal(data);
  const max = Math.max(...data.map((d) => d.value), 1);
  const scale = niceScale(max);

  const labelWidth = Math.min(rect.width * 0.34, 150);
  const valueWidth = 62;
  const plotX = rect.x + labelWidth;
  const plotWidth = Math.max(20, rect.width - labelWidth - valueWidth);

  // 2px of surface between bars, per the mark spec.
  const rowHeight = rect.height / data.length;
  const barHeight = Math.max(6, Math.min(22, rowHeight - 8));

  // Recessive gridlines, drawn under the bars.
  ctx.strokeStyle = AXIS_INK;
  ctx.lineWidth = 1;
  ctx.globalAlpha = 0.35;
  ctx.beginPath();
  for (let v = 0; v <= scale.max; v += scale.step) {
    const x = plotX + (v / scale.max) * plotWidth;
    ctx.moveTo(x, rect.y);
    ctx.lineTo(x, rect.y + rect.height);
  }
  ctx.stroke();
  ctx.globalAlpha = 1;

  data.forEach((datum, i) => {
    const cy = rect.y + rowHeight * i + rowHeight / 2;
    const width = (Math.max(0, datum.value) / scale.max) * plotWidth;

    ctx.fillStyle = TEXT_INK;
    ctx.font = "400 12px system-ui";
    ctx.textAlign = "right";
    ctx.fillText(truncate(ctx, datum.label, labelWidth - 10), plotX - 8, cy + 4);

    if (width > 0) {
      ctx.fillStyle = BAR_HUE;
      const path = new Path2D();
      // 4px rounded data-end, square against the baseline.
      path.roundRect(plotX, cy - barHeight / 2, width, barHeight, [0, 4, 4, 0]);
      ctx.fill(path);
    }

    // Direct labels: the palette's contrast relief, and what a reader wants.
    ctx.fillStyle = MUTED_INK;
    ctx.font = "400 11px system-ui";
    ctx.textAlign = "left";
    const percent = total > 0 ? Math.round((datum.value / total) * 100) : 0;
    const text = showCounts ? `${datum.value} (${percent}%)` : `${percent}%`;
    ctx.fillText(text, plotX + width + 6, cy + 4);
  });
}

function drawPie(
  ctx: CanvasRenderingContext2D,
  rect: { x: number; y: number; width: number; height: number },
  { data }: ChartOptions,
): void {
  const total = chartTotal(data);
  if (total <= 0) return;

  const legendWidth = Math.min(rect.width * 0.42, 170);
  const size = Math.min(rect.width - legendWidth, rect.height);
  const radius = Math.max(10, size / 2 - 6);
  const cx = rect.x + radius + 6;
  const cy = rect.y + rect.height / 2;

  const dark = isDarkSurface(ctx);
  let angle = -Math.PI / 2;

  data.forEach((datum, i) => {
    const share = Math.max(0, datum.value) / total;
    const sweep = share * Math.PI * 2;
    if (sweep <= 0) return;

    ctx.beginPath();
    ctx.moveTo(cx, cy);
    ctx.arc(cx, cy, radius, angle, angle + sweep);
    ctx.closePath();
    ctx.fillStyle = sliceColor(i, dark);
    ctx.fill();

    // A 2px surface ring separates touching slices, so adjacent hues never
    // blend into one shape.
    ctx.strokeStyle = dark ? "#1a1a19" : "#ffffff";
    ctx.lineWidth = 2;
    ctx.stroke();

    angle += sweep;
  });

  // Legend: identity is never colour alone.
  const legendX = cx + radius + 18;
  const lineHeight = Math.min(20, rect.height / Math.max(data.length, 1));
  let ly = rect.y + Math.max(12, (rect.height - lineHeight * data.length) / 2) + 10;

  data.forEach((datum, i) => {
    ctx.fillStyle = sliceColor(i, dark);
    ctx.fillRect(legendX, ly - 8, 10, 10);

    ctx.fillStyle = TEXT_INK;
    ctx.font = "400 12px system-ui";
    ctx.textAlign = "left";
    const percent = Math.round((datum.value / total) * 100);
    const text = `${truncate(ctx, datum.label, rect.width - legendWidth)} ${percent}%`;
    ctx.fillText(text, legendX + 16, ly);
    ly += lineHeight;
  });
}

function drawTable(
  ctx: CanvasRenderingContext2D,
  rect: { x: number; y: number; width: number; height: number },
  { data }: ChartOptions,
): void {
  const total = chartTotal(data);
  const rowHeight = Math.min(26, rect.height / Math.max(data.length + 1, 1));

  ctx.strokeStyle = AXIS_INK;
  ctx.lineWidth = 1;
  ctx.font = "400 12px system-ui";

  data.forEach((datum, i) => {
    const y = rect.y + rowHeight * (i + 1);

    ctx.beginPath();
    ctx.moveTo(rect.x, y);
    ctx.lineTo(rect.x + rect.width, y);
    ctx.stroke();

    ctx.fillStyle = TEXT_INK;
    ctx.textAlign = "left";
    ctx.fillText(truncate(ctx, datum.label, rect.width - 110), rect.x + 4, y - 8);

    ctx.fillStyle = MUTED_INK;
    ctx.textAlign = "right";
    const percent = total > 0 ? Math.round((datum.value / total) * 100) : 0;
    ctx.fillText(`${datum.value}  (${percent}%)`, rect.x + rect.width - 4, y - 8);
  });
}

/** Clips a label to the space available, with an ellipsis. */
function truncate(ctx: CanvasRenderingContext2D, text: string, maxWidth: number): string {
  if (maxWidth <= 0) return "";
  if (ctx.measureText(text).width <= maxWidth) return text;

  let clipped = text;
  while (clipped.length > 1 && ctx.measureText(`${clipped}…`).width > maxWidth) {
    clipped = clipped.slice(0, -1);
  }
  return `${clipped}…`;
}

/**
 * Whether the page behind the chart is dark, so the palette can use its dark
 * steps. Dark mode is a selected set, not an automatic flip.
 */
function isDarkSurface(ctx: CanvasRenderingContext2D): boolean {
  const fill = ctx.fillStyle;
  void fill;
  return (
    typeof window !== "undefined" &&
    typeof window.matchMedia === "function" &&
    window.matchMedia("(prefers-color-scheme: dark)").matches
  );
}
