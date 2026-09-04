/**
 * Text editing, done in the DOM.
 *
 * A `<textarea>` is positioned over the unit while editing and the canvas draws
 * the unit only after the edit commits. Editing text *in* canvas would mean
 * building caret movement, selection and — the real blocker — Japanese IME
 * composition from scratch. The browser already has all three, correct, for
 * free. The cost is keeping the overlay's font metrics in step with the
 * renderer's, which is why both go through the same font size and family.
 */

import { useCallback, useEffect, useLayoutEffect, useRef, useState } from "react";

import type { EditSession } from "../editor/session";
import type { ModelId, Page } from "../model/types";
import { worldToScreen, type Viewport } from "../render/viewport";

interface Props {
  unitId: ModelId;
  page: Page;
  session: EditSession;
  viewport: Viewport;
  onClose: () => void;
}

export function TextEditOverlay({ unitId, page, session, viewport, onClose }: Props) {
  const ref = useRef<HTMLTextAreaElement>(null);
  const located = locate(page, unitId);
  const unit = located?.unit;

  const initial =
    unit?.type === "$text"
      ? unit.text
      : unit?.type === "$flipunit"
        ? unit.flipState === 0
          ? unit.frontText
          : unit.backText
        : "";

  const [value, setValue] = useState(initial);

  useLayoutEffect(() => {
    setValue(initial);
  }, [unitId, initial]);

  useEffect(() => {
    const el = ref.current;
    if (!el) return;
    el.focus();
    el.setSelectionRange(el.value.length, el.value.length);
  }, [unitId]);

  const commit = useCallback(
    (close: boolean) => {
      if (!unit || !located) return;
      if (unit.type !== "$text" && unit.type !== "$flipunit") return;

      if (value !== initial) {
        const after =
          unit.type === "$text"
            ? { text: value }
            : unit.flipState === 0
              ? { frontText: value }
              : { backText: value };
        const before =
          unit.type === "$text"
            ? { text: initial }
            : unit.flipState === 0
              ? { frontText: initial }
              : { backText: initial };

        session.transact("文字を編集", () => {
          session.record({
            kind: "unit.update",
            pageId: page.id,
            layerId: located.layerId,
            unitId,
            before,
            after,
          });
        });
      }
      if (close) onClose();
    },
    [unit, located, value, initial, session, page.id, unitId, onClose],
  );

  // Blur is the normal path, but it is not the only way this overlay goes away:
  // closing the note, switching page, or an undo that removes the unit all
  // unmount it without one. Without this, the edit would be silently lost.
  const commitRef = useRef(commit);
  commitRef.current = commit;
  const committed = useRef(false);

  useEffect(() => {
    committed.current = false;
    return () => {
      if (!committed.current) commitRef.current(false);
    };
  }, [unitId]);

  if (!unit || !located) return null;
  if (unit.type !== "$text" && unit.type !== "$flipunit") return null;

  const topLeft = worldToScreen(viewport, unit.x, unit.y);
  const padding = unit.type === "$text" ? 6 : 12;

  return (
    <textarea
      ref={ref}
      className="text-overlay"
      value={value}
      onChange={(e) => setValue(e.target.value)}
      onBlur={() => {
        committed.current = true;
        commit(true);
      }}
      onKeyDown={(e) => {
        // Escape abandons the edit. Enter must stay a newline — this is a text
        // box, and on a Japanese IME Enter also confirms a conversion, so
        // binding it to commit would eat the confirmation keystroke.
        if (e.key === "Escape") {
          e.preventDefault();
          committed.current = true;
          onClose();
        }
      }}
      style={{
        left: topLeft.x,
        top: topLeft.y,
        width: unit.width * viewport.scale,
        height: unit.height * viewport.scale,
        fontSize: unit.fontSize * viewport.scale,
        lineHeight: unit.type === "$text" ? unit.lineHeight : 1.45,
        padding: padding * viewport.scale,
        color: unit.color,
        background: unit.type === "$flipunit" ? unit.backgroundColor : undefined,
        fontFamily: unit.type === "$text" ? unit.fontFamily : "system-ui",
        fontWeight: unit.type === "$text" && unit.bold ? 700 : 400,
        fontStyle: unit.type === "$text" && unit.italic ? "italic" : "normal",
        textAlign: unit.type === "$text" ? unit.align : "left",
      }}
    />
  );
}

function locate(page: Page, unitId: ModelId) {
  for (const layer of page.layers) {
    const unit = layer.units.find((u) => u.id === unitId);
    if (unit) return { layerId: layer.id, unit };
  }
  return null;
}
