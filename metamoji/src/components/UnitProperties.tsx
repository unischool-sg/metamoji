/**
 * Property editing for the selected unit.
 *
 * One panel that adapts to the unit type, rather than the modal-per-object-type
 * design docs/02 §4 found in the original (182 dialog layouts). Properties are
 * things you judge by looking at the page, and a dialog covers the page.
 *
 * Every change goes through a transaction, so each adjustment is one undo step.
 */

import { PEN_COLORS } from "../editor/tools";
import { useTranslation } from "../i18n/useTranslation";
import { STICKY_COLORS } from "../model/factory";
import type { ModelId, Page, TextAlign, Unit } from "../model/types";
import { useEditorStore } from "../store/editorStore";

const FONT_SIZES = [12, 14, 16, 20, 24, 32, 48];
const FONT_FAMILIES = [
  { id: "system-ui", label: "標準" },
  { id: "serif", label: "明朝" },
  { id: "sans-serif", label: "ゴシック" },
  { id: "monospace", label: "等幅" },
];
const ALIGNS: { id: TextAlign; label: string; glyph: string }[] = [
  { id: "left", label: "左揃え", glyph: "⬅" },
  { id: "center", label: "中央揃え", glyph: "↔" },
  { id: "right", label: "右揃え", glyph: "➡" },
];

export function UnitProperties() {
  const { t } = useTranslation();
  const doc = useEditorStore((s) => s.doc);
  const pageIndex = useEditorStore((s) => s.pageIndex);
  const selection = useEditorStore((s) => s.selection);
  const session = useEditorStore((s) => s.session);

  const page = doc?.pages[pageIndex];
  if (!page || !session || selection.length !== 1) return null;

  const located = locate(page, selection[0]);
  if (!located) return null;
  const { unit, layerId } = located;

  /** Applies a patch to the selected unit as one undo step. */
  const update = (label: string, patch: Partial<Unit>) => {
    const before: Record<string, unknown> = {};
    for (const key of Object.keys(patch)) {
      before[key] = (unit as unknown as Record<string, unknown>)[key];
    }
    session.transact(label, () => {
      session.record({
        kind: "unit.update",
        pageId: page.id,
        layerId,
        unitId: unit.id,
        before: before as Partial<Unit>,
        after: patch,
      });
    });
  };

  return (
    <>
      <h2>{t(unitLabel(unit))}</h2>

      {unit.type === "$text" && (
        <>
          <div className="field">
            <label htmlFor="font-family">{t("フォント")}</label>
            <select
              id="font-family"
              value={unit.fontFamily}
              onChange={(e) => update(t("フォントを変更"), { fontFamily: e.target.value })}
            >
              {FONT_FAMILIES.map((font) => (
                <option key={font.id} value={font.id}>
                  {t(font.label)}
                </option>
              ))}
            </select>
          </div>

          <div className="field">
            <label htmlFor="font-size">{t("文字サイズ")}</label>
            <select
              id="font-size"
              value={unit.fontSize}
              onChange={(e) => update(t("文字サイズを変更"), { fontSize: Number(e.target.value) })}
            >
              {FONT_SIZES.map((size) => (
                <option key={size} value={size}>
                  {size}
                </option>
              ))}
            </select>
          </div>

          <div className="button-grid">
            <button
              type="button"
              className="btn"
              aria-pressed={unit.bold}
              onClick={() => update(t("太字"), { bold: !unit.bold })}
              style={{ fontWeight: 700 }}
            >
              B
            </button>
            <button
              type="button"
              className="btn"
              aria-pressed={unit.italic}
              onClick={() => update(t("斜体"), { italic: !unit.italic })}
              style={{ fontStyle: "italic" }}
            >
              I
            </button>
            <button
              type="button"
              className="btn"
              aria-pressed={unit.underline}
              onClick={() => update(t("下線"), { underline: !unit.underline })}
              style={{ textDecoration: "underline" }}
            >
              U
            </button>
            <button
              type="button"
              className="btn"
              aria-pressed={unit.verticalWriting}
              onClick={() =>
                update(t("縦書き"), { verticalWriting: !unit.verticalWriting })
              }
            >
              {t("縦")}
            </button>
          </div>

          <h2>{t("配置")}</h2>
          <div className="width-row">
            {ALIGNS.map((align) => (
              <button
                key={align.id}
                type="button"
                className="width-btn"
                aria-pressed={unit.align === align.id}
                title={t(align.label)}
                onClick={() => update(t("配置を変更"), { align: align.id })}
              >
                {align.glyph}
              </button>
            ))}
          </div>

          <h2>{t("文字の色")}</h2>
          <Swatches
            colors={PEN_COLORS}
            value={unit.color}
            onPick={(color) => update(t("文字の色を変更"), { color })}
          />
        </>
      )}

      {unit.type === "$shape" && (
        <>
          <h2>{t("線の色")}</h2>
          <Swatches
            colors={PEN_COLORS}
            value={unit.strokeColor}
            onPick={(strokeColor) => update(t("線の色を変更"), { strokeColor })}
          />

          <div className="field">
            <label htmlFor="stroke-width">{t("線の太さ")}</label>
            <input
              id="stroke-width"
              type="range"
              min={0}
              max={16}
              step={0.5}
              value={unit.strokeWidth}
              onChange={(e) =>
                update(t("線の太さを変更"), { strokeWidth: Number(e.target.value) })
              }
            />
          </div>

          <h2>{t("塗り")}</h2>
          <Swatches
            colors={PEN_COLORS}
            value={unit.fillColor}
            allowNone
            noneLabel={t("塗りなし")}
            onPick={(fillColor) => update(t("塗りを変更"), { fillColor })}
          />

          <div className="setting-row">
            <label htmlFor="dashed">{t("破線")}</label>
            <input
              id="dashed"
              type="checkbox"
              checked={unit.dashed}
              onChange={(e) => update(t("破線を切り替え"), { dashed: e.target.checked })}
            />
          </div>
        </>
      )}

      {unit.type === "$form" && (
        <>
          <div className="field">
            <label htmlFor="rows">{t("行数")}</label>
            <input
              id="rows"
              type="number"
              min={1}
              max={60}
              value={unit.rows}
              onChange={(e) =>
                update(t("行数を変更"), { rows: clampCount(Number(e.target.value)) })
              }
            />
          </div>
          {unit.form !== "ruled" && (
            <div className="field">
              <label htmlFor="columns">{t("列数")}</label>
              <input
                id="columns"
                type="number"
                min={1}
                max={60}
                value={unit.columns}
                onChange={(e) =>
                  update(t("列数を変更"), { columns: clampCount(Number(e.target.value)) })
                }
              />
            </div>
          )}
          <h2>{t("線の色")}</h2>
          <Swatches
            colors={PEN_COLORS}
            value={unit.lineColor}
            onPick={(lineColor) => update(t("線の色を変更"), { lineColor })}
          />
        </>
      )}

      {unit.type === "$flipunit" && (
        <>
          <h2>{t("付箋の色")}</h2>
          <Swatches
            colors={STICKY_COLORS}
            value={unit.backgroundColor}
            onPick={(backgroundColor) => update(t("付箋の色を変更"), { backgroundColor })}
          />
          <button
            type="button"
            className="btn"
            style={{ width: "100%" }}
            onClick={() =>
              update(t("裏返す"), { flipState: unit.flipState === 0 ? 1 : 0 })
            }
          >
            {unit.flipState === 0 ? t("裏面を表示") : t("表面を表示")}
          </button>
        </>
      )}

      {unit.type === "$image" && (
        <div className="field">
          <label htmlFor="opacity">{t("不透明度")}</label>
          <input
            id="opacity"
            type="range"
            min={0.1}
            max={1}
            step={0.05}
            value={unit.opacity}
            onChange={(e) => update(t("不透明度を変更"), { opacity: Number(e.target.value) })}
          />
        </div>
      )}

      {unit.type === "$dummy" && (
        <p className="setting-note">
          {t(
            "この Unit ({type}) はこの版では編集できません。内容はそのまま保持されます。",
            { type: unit.degraded?.originalModelType ?? "?" },
          )}
        </p>
      )}
    </>
  );
}

function Swatches({
  colors,
  value,
  onPick,
  allowNone,
  noneLabel,
}: {
  colors: readonly string[];
  value: string;
  onPick: (color: string) => void;
  allowNone?: boolean;
  noneLabel?: string;
}) {
  return (
    <div className="swatches">
      {allowNone && (
        <button
          type="button"
          className="swatch swatch--none"
          aria-pressed={value === ""}
          aria-label={noneLabel}
          onClick={() => onPick("")}
        />
      )}
      {colors.map((color) => (
        <button
          key={color}
          type="button"
          className="swatch"
          aria-pressed={value === color}
          aria-label={color}
          style={{ background: color }}
          onClick={() => onPick(color)}
        />
      ))}
    </div>
  );
}

function unitLabel(unit: Unit): string {
  switch (unit.type) {
    case "$text":
      return "テキスト";
    case "$shape":
      return "図形";
    case "$form":
      return "表・罫線";
    case "$flipunit":
      return "付箋";
    case "$image":
      return "画像";
    case "$draw":
      return "手書き";
    case "$pdf":
      return "PDF";
    case "$bgimage":
      return "背景画像";
    default:
      return "オブジェクト";
  }
}

/** Guards against a blank or absurd row/column count from a number input. */
function clampCount(value: number): number {
  if (!Number.isFinite(value)) return 1;
  return Math.max(1, Math.min(60, Math.round(value)));
}

function locate(page: Page, unitId: ModelId): { layerId: ModelId; unit: Unit } | null {
  for (const layer of page.layers) {
    const unit = layer.units.find((u) => u.id === unitId);
    if (unit) return { layerId: layer.id, unit };
  }
  return null;
}
