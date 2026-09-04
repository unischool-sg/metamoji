/**
 * The right-hand properties panel.
 *
 * docs/02 §4 counted 182 dialog layouts in the original — the whole app is
 * modal. A persistent panel is the deliberate departure: pen settings, paper
 * and layer properties are things you adjust while looking at the page, and a
 * dialog hides the very thing you are adjusting.
 */

import { ERASER_SIZES, PEN_COLORS, PEN_PRESETS, PEN_WIDTHS } from "../editor/tools";
import {
  clipboardUnits,
  copyUnits,
  deleteUnits,
  duplicateUnits,
  pasteUnits,
  reorderUnits,
} from "../editor/operations";
import { STICKY_COLORS } from "../model/factory";
import type { FormKind, PaperStyle, ShapeKind } from "../model/types";
import { useEditorStore } from "../store/editorStore";

const PAPER_STYLES: { id: PaperStyle; label: string }[] = [
  { id: "blank", label: "無地" },
  { id: "lines", label: "横罫" },
  { id: "grid", label: "方眼" },
  { id: "dots", label: "ドット" },
];

export function Inspector() {
  const activeTool = useEditorStore((s) => s.activeTool);
  const hasSelection = useEditorStore((s) => s.selection.length > 0);

  return (
    <aside className="inspector">
      {activeTool === "pen" && <PenSection />}
      {activeTool === "eraser" && <EraserSection />}
      {/* Selection actions follow the selection, not the tool: a lasso leaves
          you with something selected and nothing to do with it otherwise. */}
      {(activeTool === "select" || hasSelection) && <SelectionSection />}
      {activeTool === "lasso" && <LassoSection />}
      {activeTool === "shape" && <ShapeSection />}
      {activeTool === "form" && <FormSection />}
      {activeTool === "sticky" && <StickySection />}
      {activeTool === "laser" && <LaserSection />}
      <PaperSection />
      <LayerSection />
    </aside>
  );
}

function PenSection() {
  const penPresetId = useEditorStore((s) => s.penPresetId);
  const penSettings = useEditorStore((s) => s.penSettings);
  const setPenPreset = useEditorStore((s) => s.setPenPreset);
  const setPenColor = useEditorStore((s) => s.setPenColor);
  const setPenWidth = useEditorStore((s) => s.setPenWidth);

  const active = penSettings[penPresetId];
  const penColor = active?.color ?? PEN_COLORS[0];
  const penWidth = active?.width ?? PEN_WIDTHS[1];

  return (
    <>
      <h2>ペンの種類</h2>
      <div className="pen-list">
        {PEN_PRESETS.map((preset) => (
          <button
            key={preset.id}
            type="button"
            className="pen-row"
            aria-pressed={penPresetId === preset.id}
            onClick={() => setPenPreset(preset.id)}
          >
            <span
              aria-hidden
              style={{
                width: 22,
                height: Math.max(2, Math.min(preset.width, 10)),
                borderRadius: 999,
                background: penSettings[preset.id]?.color ?? preset.color,
                opacity: preset.opacity,
              }}
            />
            {preset.label}
          </button>
        ))}
      </div>

      <h2>色</h2>
      <div className="swatches">
        {PEN_COLORS.map((color) => (
          <button
            key={color}
            type="button"
            className="swatch"
            aria-pressed={penColor === color}
            aria-label={color}
            style={{ background: color }}
            onClick={() => setPenColor(color)}
          />
        ))}
      </div>

      <h2>太さ</h2>
      <div className="width-row">
        {PEN_WIDTHS.map((width) => (
          <button
            key={width}
            type="button"
            className="width-btn"
            aria-pressed={penWidth === width}
            aria-label={`${width}`}
            onClick={() => setPenWidth(width)}
          >
            <span
              className="width-btn__dot"
              style={{ width: Math.min(width, 14), height: Math.min(width, 14) }}
            />
          </button>
        ))}
      </div>
    </>
  );
}

function EraserSection() {
  const eraserSize = useEditorStore((s) => s.eraserSize);
  const setEraserSize = useEditorStore((s) => s.setEraserSize);

  return (
    <>
      <h2>消しゴムの大きさ</h2>
      <div className="width-row">
        {ERASER_SIZES.map((size) => (
          <button
            key={size}
            type="button"
            className="width-btn"
            aria-pressed={eraserSize === size}
            onClick={() => setEraserSize(size)}
          >
            {size}
          </button>
        ))}
      </div>
      <p style={{ fontSize: 12, color: "var(--color-text-muted)", lineHeight: 1.6 }}>
        触れたストロークを1本ずつ消します。
      </p>
    </>
  );
}

function SelectionSection() {
  const selection = useEditorStore((s) => s.selection);
  const doc = useEditorStore((s) => s.doc);
  const pageIndex = useEditorStore((s) => s.pageIndex);
  const session = useEditorStore((s) => s.session);
  const setSelection = useEditorStore((s) => s.setSelection);

  const page = doc?.pages[pageIndex];
  const has = selection.length > 0;

  const run = (fn: () => void) => {
    if (!session || !page) return;
    fn();
  };

  return (
    <>
      <h2>選択</h2>
      {!has ? (
        <p style={{ fontSize: 12, color: "var(--color-text-muted)", lineHeight: 1.6 }}>
          オブジェクトをクリック、または範囲をドラッグして選択します。
        </p>
      ) : (
        <p style={{ fontSize: 13, marginTop: 0 }}>{selection.length} 個を選択中</p>
      )}

      <div className="button-grid">
        <button
          type="button"
          className="btn"
          disabled={!has}
          onClick={() => run(() => copyUnits(page!, selection))}
        >
          コピー
        </button>
        <button
          type="button"
          className="btn"
          disabled={clipboardUnits().length === 0}
          onClick={() => run(() => setSelection(pasteUnits(session!, page!, clipboardUnits())))}
        >
          貼り付け
        </button>
        <button
          type="button"
          className="btn"
          disabled={!has}
          onClick={() => run(() => setSelection(duplicateUnits(session!, page!, selection)))}
        >
          複製
        </button>
        <button
          type="button"
          className="btn btn--danger"
          disabled={!has}
          onClick={() =>
            run(() => {
              deleteUnits(session!, page!, selection);
              setSelection([]);
            })
          }
        >
          削除
        </button>
      </div>

      <h2>重ね順</h2>
      <div className="button-grid">
        <button
          type="button"
          className="btn"
          disabled={!has}
          onClick={() => run(() => reorderUnits(session!, page!, selection, "front"))}
        >
          最前面へ
        </button>
        <button
          type="button"
          className="btn"
          disabled={!has}
          onClick={() => run(() => reorderUnits(session!, page!, selection, "forward"))}
        >
          前面へ
        </button>
        <button
          type="button"
          className="btn"
          disabled={!has}
          onClick={() => run(() => reorderUnits(session!, page!, selection, "backward"))}
        >
          背面へ
        </button>
        <button
          type="button"
          className="btn"
          disabled={!has}
          onClick={() => run(() => reorderUnits(session!, page!, selection, "back"))}
        >
          最背面へ
        </button>
      </div>
    </>
  );
}

function LassoSection() {
  const lassoMode = useEditorStore((s) => s.lassoMode);
  const setLassoMode = useEditorStore((s) => s.setLassoMode);

  return (
    <>
      <h2>なげなわの範囲</h2>
      <div className="pen-list">
        <button
          type="button"
          className="pen-row"
          aria-pressed={lassoMode === "contain"}
          onClick={() => setLassoMode("contain")}
        >
          完全に囲んだものだけ
        </button>
        <button
          type="button"
          className="pen-row"
          aria-pressed={lassoMode === "overlap"}
          onClick={() => setLassoMode("overlap")}
        >
          触れたものすべて
        </button>
      </div>
    </>
  );
}

const SHAPES: { id: ShapeKind; label: string; glyph: string }[] = [
  { id: "rect", label: "長方形", glyph: "▭" },
  { id: "roundRect", label: "角丸", glyph: "▢" },
  { id: "ellipse", label: "楕円", glyph: "◯" },
  { id: "triangle", label: "三角形", glyph: "△" },
  { id: "diamond", label: "菱形", glyph: "◇" },
  { id: "line", label: "直線", glyph: "╱" },
  { id: "arrow", label: "矢印", glyph: "↗" },
];

function ShapeSection() {
  const shapeKind = useEditorStore((s) => s.shapeKind);
  const strokeColor = useEditorStore((s) => s.shapeStrokeColor);
  const fillColor = useEditorStore((s) => s.shapeFillColor);
  const setShapeKind = useEditorStore((s) => s.setShapeKind);
  const setStroke = useEditorStore((s) => s.setShapeStrokeColor);
  const setFill = useEditorStore((s) => s.setShapeFillColor);

  return (
    <>
      <h2>図形</h2>
      <div className="shape-grid">
        {SHAPES.map((shape) => (
          <button
            key={shape.id}
            type="button"
            className="shape-btn"
            aria-pressed={shapeKind === shape.id}
            title={shape.label}
            onClick={() => setShapeKind(shape.id)}
          >
            <span aria-hidden>{shape.glyph}</span>
            <span className="sr-only">{shape.label}</span>
          </button>
        ))}
      </div>

      <h2>線の色</h2>
      <div className="swatches">
        {PEN_COLORS.map((color) => (
          <button
            key={color}
            type="button"
            className="swatch"
            aria-pressed={strokeColor === color}
            aria-label={`線 ${color}`}
            style={{ background: color }}
            onClick={() => setStroke(color)}
          />
        ))}
      </div>

      <h2>塗り</h2>
      <div className="swatches">
        <button
          type="button"
          className="swatch swatch--none"
          aria-pressed={fillColor === ""}
          aria-label="塗りなし"
          onClick={() => setFill("")}
        />
        {PEN_COLORS.slice(0, 7).map((color) => (
          <button
            key={color}
            type="button"
            className="swatch"
            aria-pressed={fillColor === color}
            aria-label={`塗り ${color}`}
            style={{ background: color }}
            onClick={() => setFill(color)}
          />
        ))}
      </div>

      <p style={{ fontSize: 12, color: "var(--color-text-muted)", lineHeight: 1.6 }}>
        ドラッグで大きさを決めます。Shift で正方形・正円になります。
      </p>
    </>
  );
}

const FORMS: { id: FormKind; label: string }[] = [
  { id: "table", label: "表" },
  { id: "ruled", label: "罫線" },
  { id: "grid", label: "方眼" },
];

function FormSection() {
  const formKind = useEditorStore((s) => s.formKind);
  const setFormKind = useEditorStore((s) => s.setFormKind);

  return (
    <>
      <h2>表・罫線</h2>
      <div className="pen-list">
        {FORMS.map((form) => (
          <button
            key={form.id}
            type="button"
            className="pen-row"
            aria-pressed={formKind === form.id}
            onClick={() => setFormKind(form.id)}
          >
            {form.label}
          </button>
        ))}
      </div>
      <p style={{ fontSize: 12, color: "var(--color-text-muted)", lineHeight: 1.6 }}>
        ドラッグで大きさを決めます。行数・列数は配置後に変更できます。
      </p>
    </>
  );
}

function LaserSection() {
  return (
    <>
      <h2>レーザーポインタ</h2>
      <p style={{ fontSize: 12, color: "var(--color-text-muted)", lineHeight: 1.6 }}>
        軌跡は少し経つと消え、ノートには保存されません。
      </p>
    </>
  );
}

function StickySection() {
  return (
    <>
      <h2>付箋</h2>
      <div className="swatches">
        {STICKY_COLORS.map((color) => (
          <span key={color} className="swatch" style={{ background: color }} />
        ))}
      </div>
      <p style={{ fontSize: 12, color: "var(--color-text-muted)", lineHeight: 1.6 }}>
        キャンバスをクリックすると付箋を置きます。ダブルクリックで文字を編集できます。
      </p>
    </>
  );
}

function PaperSection() {
  const doc = useEditorStore((s) => s.doc);
  const pageIndex = useEditorStore((s) => s.pageIndex);
  const session = useEditorStore((s) => s.session);
  const page = doc?.pages[pageIndex];

  if (!page || !session) return null;

  const setStyle = (paperStyle: PaperStyle) => {
    session.transact("用紙を変更", () => {
      session.record({
        kind: "page.update",
        pageId: page.id,
        before: { paperStyle: page.paperStyle },
        after: { paperStyle },
      });
    });
  };

  return (
    <>
      <h2>用紙</h2>
      <div className="pen-list">
        {PAPER_STYLES.map((style) => (
          <button
            key={style.id}
            type="button"
            className="pen-row"
            aria-pressed={page.paperStyle === style.id}
            onClick={() => setStyle(style.id)}
          >
            {style.label}
          </button>
        ))}
      </div>
    </>
  );
}

function LayerSection() {
  const doc = useEditorStore((s) => s.doc);
  const pageIndex = useEditorStore((s) => s.pageIndex);
  const session = useEditorStore((s) => s.session);
  const page = doc?.pages[pageIndex];

  if (!page || !session) return null;

  const toggle = (layerId: string, visible: boolean) => {
    session.transact("レイヤーの表示を切り替え", () => {
      session.record({
        kind: "layer.update",
        pageId: page.id,
        layerId,
        before: { visible },
        after: { visible: !visible },
      });
    });
  };

  return (
    <>
      <h2>レイヤー</h2>
      <div className="pen-list">
        {page.layers.map((layer) => (
          <div key={layer.id} className="pen-row" style={{ justifyContent: "space-between" }}>
            <span>{layer.name}</span>
            <button
              type="button"
              onClick={() => toggle(layer.id, layer.visible)}
              title={layer.visible ? "非表示にする" : "表示する"}
              style={{ opacity: layer.visible ? 1 : 0.4 }}
            >
              {layer.visible ? "◉" : "◎"}
            </button>
          </div>
        ))}
      </div>
    </>
  );
}
