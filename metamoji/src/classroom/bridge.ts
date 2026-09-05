/**
 * Connects the editor to the classroom relay.
 *
 * This is the whole of the collaboration layer's attachment to the editor: it
 * subscribes to the one `ModelChanged` hook and forwards local edits. Nothing
 * in the model, the renderer or any unit type knows this file exists — which is
 * the point of docs/15 §6.3's recommendation, and the fix for the weakness
 * docs/15 §4 identifies in the original, where `sendDirection` was scattered
 * across a dozen unit classes and every new one risked being forgotten.
 */

import { onLocalEdit } from "../store/editorStore";
import { sendLocalEdit } from "../store/classroomStore";

let detach: (() => void) | null = null;

/** Starts forwarding local edits to the room. Idempotent. */
export function attachClassroomBridge(): void {
  if (detach) return;
  detach = onLocalEdit((noteId, edit) => sendLocalEdit(noteId, edit));
}

export function detachClassroomBridge(): void {
  detach?.();
  detach = null;
}
