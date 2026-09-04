/**
 * The page thumbnail strip.
 *
 * Thumbnails are rendered through the same `renderPage` traversal the canvas
 * and the PDF export use, so a thumbnail cannot show something the page does
 * not (docs/10 §7's one-traversal seam).
 *
 * Re-rendering every page on every keystroke would be wasteful, so each
 * thumbnail is cached against the document revision and only redrawn when that
 * moves.
 */

import { useEffect, useMemo, useRef, useState } from "react";

import { renderPageToDataUrl, thumbnailScale } from "../io/pageRender";
import type { AssetResolver } from "../render/renderer";
import type { NoteDocument } from "../model/types";

const THUMB_MAX_EDGE = 150;
/** Redraw at most this often while the user is actively editing. */
const REFRESH_DEBOUNCE_MS = 400;

interface Props {
  doc: NoteDocument;
  pageIndex: number;
  assets: AssetResolver;
  onSelect: (index: number) => void;
  onReorder: (from: number, to: number) => void;
  onDuplicate: (index: number) => void;
  onDelete: (index: number) => void;
  onAdd: () => void;
}

export function PageStrip({
  doc,
  pageIndex,
  assets,
  onSelect,
  onReorder,
  onDuplicate,
  onDelete,
  onAdd,
}: Props) {
  const [thumbs, setThumbs] = useState<Record<string, string>>({});
  const [dragIndex, setDragIndex] = useState<number | null>(null);
  const [dropIndex, setDropIndex] = useState<number | null>(null);
  const renderedRevision = useRef<number>(-1);

  const pageIds = useMemo(() => doc.pages.map((p) => p.id).join(","), [doc.pages]);

  useEffect(() => {
    // Debounced so a burst of edits produces one re-render, not one per stroke.
    const timer = setTimeout(() => {
      if (renderedRevision.current === doc.revision) return;
      renderedRevision.current = doc.revision;

      const next: Record<string, string> = {};
      for (const page of doc.pages) {
        try {
          next[page.id] = renderPageToDataUrl(page, {
            assets,
            scale: thumbnailScale(page, THUMB_MAX_EDGE),
          });
        } catch {
          // A thumbnail is a convenience; failing to draw one must not take
          // the editor down with it.
        }
      }
      setThumbs(next);
    }, REFRESH_DEBOUNCE_MS);

    return () => clearTimeout(timer);
  }, [doc, doc.revision, pageIds, assets]);

  return (
    <aside className="page-strip" aria-label="ページ一覧">
      {doc.pages.map((page, index) => (
        <div
          key={page.id}
          className="page-strip__item"
          data-active={index === pageIndex ? "true" : undefined}
          data-drop={dropIndex === index ? "true" : undefined}
          draggable
          onDragStart={() => setDragIndex(index)}
          onDragOver={(e) => {
            e.preventDefault();
            setDropIndex(index);
          }}
          onDragEnd={() => {
            setDragIndex(null);
            setDropIndex(null);
          }}
          onDrop={(e) => {
            e.preventDefault();
            if (dragIndex !== null && dragIndex !== index) onReorder(dragIndex, index);
            setDragIndex(null);
            setDropIndex(null);
          }}
        >
          <button
            type="button"
            className="page-strip__thumb"
            onClick={() => onSelect(index)}
            aria-current={index === pageIndex}
          >
            {thumbs[page.id] ? (
              <img src={thumbs[page.id]} alt="" draggable={false} />
            ) : (
              <span className="page-strip__placeholder" />
            )}
          </button>

          <div className="page-strip__footer">
            <span>{index + 1}</span>
            <span className="page-strip__actions">
              <button type="button" title="このページを複製" onClick={() => onDuplicate(index)}>
                ⧉
              </button>
              <button
                type="button"
                title="このページを削除"
                onClick={() => onDelete(index)}
                disabled={doc.pages.length <= 1}
              >
                ✕
              </button>
            </span>
          </div>
        </div>
      ))}

      <button type="button" className="page-strip__add" onClick={onAdd}>
        + ページ
      </button>
    </aside>
  );
}
