/**
 * The right-hand properties panel.
 *
 * docs/02 §4 counted 182 dialog layouts in the original — the whole app is
 * modal. A persistent panel is the deliberate departure: pen settings, paper
 * and layer properties are things you adjust while looking at the page, and a
 * dialog hides the very thing you are adjusting.
 */

import { ERASER_SIZES, PEN_COLORS, PEN_PRESETS, PEN_WIDTHS } from "../editor/tools";
import { STICKY_COLORS } from "../model/factory";
import type { PaperStyle } from "../model/types";
import { useEditorStore } from "../store/editorStore";

const PAPER_STYLES: { id: PaperStyle; label: string }[] = [
  { id: "blank", label: "無地" },
  { id: "lines", label: "横罫" },
  { id: "grid", label: "方眼" },
  { id: "dots", label: "ドット" },
];

export function Inspector() {
  const activeTool = useEditorStore((s) => s.activeTool);

  return (
    <aside className="inspector">
      {activeTool === "pen" && <PenSection />}
      {activeTool === "eraser" && <EraserSection />}
      {activeTool === "select" && <SelectionSection />}
      {activeTool === "sticky" && <StickySection />}
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

  const remove = () => {
    if (!session || !page || selection.length === 0) return;
    session.transact("削除", () => {
      // Removing back-to-front keeps the remaining indices valid as we go.
      for (const layer of page.layers) {
        for (let i = layer.units.length - 1; i >= 0; i--) {
          const unit = layer.units[i];
          if (!selection.includes(unit.id)) continue;
          session.record({
            kind: "unit.remove",
            pageId: page.id,
            layerId: layer.id,
            index: i,
            unit,
          });
        }
      }
    });
    setSelection([]);
  };

  return (
    <>
      <h2>選択</h2>
      {selection.length === 0 ? (
        <p style={{ fontSize: 12, color: "var(--color-text-muted)" }}>
          オブジェクトをクリック、または範囲をドラッグして選択します。
        </p>
      ) : (
        <>
          <p style={{ fontSize: 13, marginTop: 0 }}>{selection.length} 個を選択中</p>
          <button type="button" className="btn btn--danger" onClick={remove}>
            削除
          </button>
        </>
      )}
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
