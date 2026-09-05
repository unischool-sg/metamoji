import { Icon, type IconName } from "./Icon";
import { TOOLS, type ToolId } from "../editor/tools";
import { useTranslation } from "../i18n/useTranslation";
import { useEditorStore } from "../store/editorStore";

/**
 * Tool icons.
 *
 * docs/02 §4 found the original's UI is built from 531 custom layouts and that
 * its Android drawables are not reusable, so the icon set had to be new. These
 * are Material Symbols, chosen for what the tool does rather than for what it
 * looks like — the marquee is `crop_free` (a selection frame) rather than a
 * plain square, so it does not read as "insert rectangle" next to the shape
 * tool.
 */
const ICONS: Record<ToolId, IconName> = {
  pen: "stylus",
  eraser: "ink_eraser",
  select: "crop_free",
  lasso: "lasso_select",
  text: "text_fields",
  sticky: "sticky_note_2",
  shape: "shapes",
  form: "table",
  image: "image",
  survey: "bar_chart",
  laser: "ads_click",
  pan: "pan_tool",
};

export function Toolbar() {
  const { t } = useTranslation();
  const activeTool = useEditorStore((s) => s.activeTool);
  const setTool = useEditorStore((s) => s.setTool);

  return (
    <div className="toolbar" role="toolbar" aria-label={t("ツール")}>
      {TOOLS.map((tool, index) => (
        <div key={tool.id}>
          {(index === 4 || index === 10) && <div className="toolbar__rule" />}
          <button
            type="button"
            className="tool-btn"
            aria-pressed={activeTool === tool.id}
            title={`${t(tool.label)} (${tool.shortcut})`}
            onClick={() => setTool(tool.id)}
          >
            <Icon name={ICONS[tool.id]} />
            <span className="sr-only">{t(tool.label)}</span>
          </button>
        </div>
      ))}
    </div>
  );
}
