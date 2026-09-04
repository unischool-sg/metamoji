/**
 * Loads a note's image assets and hands the renderer something it can draw.
 *
 * Assets cross IPC once, on first use, and are then held as decoded `Image`
 * objects. The renderer asks synchronously (it is inside a paint), so a miss
 * returns `undefined` and kicks off a load that invalidates the canvas when it
 * resolves — a missing image draws as a placeholder for one frame rather than
 * blocking the frame.
 */

import { useEffect, useMemo, useRef, useState } from "react";

import * as api from "../ipc/api";
import type { NoteDocument } from "../model/types";
import type { AssetResolver } from "../render/renderer";

export function useAssetCache(noteId: string | null, doc: NoteDocument | null): AssetResolver {
  const cache = useRef(new Map<string, HTMLImageElement>());
  const pending = useRef(new Set<string>());
  // Bumped when a load completes, so the memo below produces a new resolver
  // identity and CanvasHost re-invalidates the canvas.
  const [loadedCount, setLoadedCount] = useState(0);

  // Tickets referenced by the current document, so we only fetch what is used.
  const tickets = useMemo(() => {
    const out = new Set<string>();
    if (!doc) return out;
    for (const page of doc.pages) {
      for (const layer of page.layers) {
        for (const unit of layer.units) {
          if (unit.type === "$image" || unit.type === "$bgimage") {
            if (unit.imageTicket) out.add(unit.imageTicket);
          } else if (unit.type === "$pdf" && unit.rasterTicket) {
            out.add(unit.rasterTicket);
          }
        }
      }
    }
    return out;
  }, [doc]);

  useEffect(() => {
    if (!noteId) return;
    let cancelled = false;

    for (const ticket of tickets) {
      if (cache.current.has(ticket) || pending.current.has(ticket)) continue;
      pending.current.add(ticket);

      void (async () => {
        try {
          const dataUrl = await api.assetGet(noteId, ticket);
          const img = new Image();
          await new Promise<void>((resolve) => {
            img.onload = () => resolve();
            img.onerror = () => resolve();
            img.src = dataUrl;
          });
          if (cancelled) return;
          cache.current.set(ticket, img);
          // Nudges the renderer to repaint now that the bytes are here.
          setLoadedCount((n) => n + 1);
        } catch {
          // A missing asset is not fatal; the renderer already draws a
          // placeholder for a ticket it cannot resolve.
        } finally {
          pending.current.delete(ticket);
        }
      })();
    }

    return () => {
      cancelled = true;
    };
  }, [noteId, tickets]);

  // Clearing on note change stops one note's images bleeding into the next.
  useEffect(() => {
    const current = cache.current;
    return () => {
      current.clear();
    };
  }, [noteId]);

  return useMemo<AssetResolver>(
    () => ({
      getImage: (ticket: string) => cache.current.get(ticket),
    }),
    // `loadedCount` is the point of this dependency: it is what makes the
    // resolver identity change once bytes arrive.
    [noteId, tickets, loadedCount],
  );
}
