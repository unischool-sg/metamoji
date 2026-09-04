import { TOOLS, type ToolId } from "../editor/tools";
import { useEditorStore } from "../store/editorStore";

/**
 * Tool glyphs.
 *
 * docs/02 §4 found the original's UI is built from 531 custom layouts and that
 * its Android drawables are not reusable, so these are new. Text glyphs keep the
 * build dependency-free; swapping in an icon set later touches only this map.
 */
const GLYPHS: Record<ToolId, string> = {
  pen: "✎",
  eraser: "⌫",
  select: "⬚",
  lasso: "◌",
  text: "T",
  sticky: "🗒",
  shape: "◇",
  form: "▦",
  image: "🖼",
  laser: "◉",
  pan: "✥",
};

export function Toolbar() {
  const activeTool = useEditorStore((s) => s.activeTool);
  const setTool = useEditorStore((s) => s.setTool);

  return (
    <div className="toolbar" role="toolbar" aria-label="ツール">
      {TOOLS.map((tool, index) => (
        <div key={tool.id}>
          {(index === 4 || index === 10) && <div className="toolbar__rule" />}
          <button
            type="button"
            className="tool-btn"
            aria-pressed={activeTool === tool.id}
            title={`${tool.label} (${tool.shortcut})`}
            onClick={() => setTool(tool.id)}
          >
            <span className="tool-btn__glyph" aria-hidden>
              {GLYPHS[tool.id]}
            </span>
            <span className="sr-only">{tool.label}</span>
          </button>
        </div>
      ))}
    </div>
  );
}
