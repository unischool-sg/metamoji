/**
 * Connects the editor to the classroom relay.
 *
 * This is the whole of the collaboration layer's attachment to the editor: it
 * subscribes to the one `ModelChanged` hook and forwards local edits. Nothing
 * in the model, the renderer or any unit type knows this file exists — which is
 * the point of docs/15 §6.3's recommendation, and the fix for the weakness
 * docs/15 §4 identifies in the original, where `sendDirection` was scattered
 * across a dozen unit classes and every new one risked being forgotten.
 *
 * **No sink is installed by default.** A Direction's payload is a serialised
 * `direction` model in the same `IModel` format as `.atdoc`
 * (`docs/typespec/classroom/collabo-socket-protocol.md` §6.1), and this build
 * reads that format but cannot write it. The seam is here and inert rather than
 * absent, because the seam is the part that was hard to get right; what is
 * missing is a codec, and `setDirectionSink` is where it plugs in.
 */

import { onLocalEdit } from "../store/editorStore";
import type { CompoundEdit } from "../editor/delta";

export type DirectionSink = (noteId: string, edit: CompoundEdit) => void;

let sink: DirectionSink | null = null;
let detach: (() => void) | null = null;

/** Installs the thing that turns a local edit into a Direction. */
export function setDirectionSink(next: DirectionSink | null): void {
  sink = next;
}

export function hasDirectionSink(): boolean {
  return sink !== null;
}

/** Starts forwarding local edits to the room. Idempotent. */
export function attachClassroomBridge(): void {
  if (detach) return;
  detach = onLocalEdit((noteId, edit) => sink?.(noteId, edit));
}

export function detachClassroomBridge(): void {
  detach?.();
  detach = null;
  sink = null;
}
