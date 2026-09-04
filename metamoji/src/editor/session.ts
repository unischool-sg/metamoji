/**
 * The edit session: transaction bracket, undo stack, and the single change hook.
 *
 * Implements docs/15 §6's recommendations directly:
 *
 *  2. `beginEdit()`/`endEdit()` is a reentrant bracket. Nested brackets share
 *     one transaction and only the outermost commit produces a `CompoundEdit`,
 *     so one gesture is one undo entry.
 *  3. Every commit emits exactly one `ModelChanged` event carrying that same
 *     `CompoundEdit`. The original app scattered `sendDirection` calls across a
 *     dozen unit classes, which meant every new unit type risked a forgotten
 *     broadcast (docs/15 §4). Here the collaboration layer will subscribe to
 *     this one hook and decide centrally, so unit code never knows about the
 *     network.
 *  4. Undo/redo availability is a subscribable value, not a push notification,
 *     so toolbar buttons follow without an explicit refresh call.
 *
 * This class is deliberately framework-agnostic — the React store wraps it.
 */

import { applyCompound, applyDelta, type CompoundEdit, type ModelDelta } from "./delta";
import type { NoteDocument } from "../model/types";

export type SessionEvent =
  | { type: "ModelChanged"; edit: CompoundEdit; doc: NoteDocument; source: EditSource }
  | { type: "DocumentReplaced"; doc: NoteDocument };

/**
 * Where a change came from. Phase C needs this so that applying a remote peer's
 * edit does not echo straight back out as a new Direction.
 */
export type EditSource = "local" | "undo" | "redo" | "remote";

export type SessionListener = (event: SessionEvent) => void;

const MAX_UNDO_DEPTH = 200;

export class EditSession {
  private doc: NoteDocument;
  private depth = 0;
  private pending: ModelDelta[] = [];
  private pendingLabel = "";
  private undoStack: CompoundEdit[] = [];
  private redoStack: CompoundEdit[] = [];
  private listeners = new Set<SessionListener>();
  /** Bumped on every commit; the store uses it as a cheap "has changed" signal. */
  private dirty = false;

  constructor(doc: NoteDocument) {
    this.doc = doc;
  }

  // -- state ---------------------------------------------------------------

  get document(): NoteDocument {
    return this.doc;
  }

  get canUndo(): boolean {
    return this.undoStack.length > 0;
  }

  get canRedo(): boolean {
    return this.redoStack.length > 0;
  }

  get isDirty(): boolean {
    return this.dirty;
  }

  get inTransaction(): boolean {
    return this.depth > 0;
  }

  markSaved(): void {
    this.dirty = false;
  }

  subscribe(listener: SessionListener): () => void {
    this.listeners.add(listener);
    return () => this.listeners.delete(listener);
  }

  private emit(event: SessionEvent): void {
    for (const l of this.listeners) l(event);
  }

  // -- transactions --------------------------------------------------------

  beginEdit(label: string): void {
    if (this.depth === 0) {
      this.pending = [];
      this.pendingLabel = label;
    }
    this.depth += 1;
  }

  /**
   * Applies a delta immediately and records it in the open transaction.
   * Calling this outside a bracket is a programming error — it would produce an
   * un-undoable change, which is exactly the class of bug the bracket exists to
   * prevent.
   */
  record(delta: ModelDelta): void {
    if (this.depth === 0) {
      throw new Error("EditSession.record called outside beginEdit/endEdit");
    }
    this.doc = applyDelta(this.doc, delta, false);
    this.pending.push(delta);
  }

  /** Runs `fn` inside a bracket, committing on success and rolling back on throw. */
  transact(label: string, fn: () => void): CompoundEdit | null {
    this.beginEdit(label);
    try {
      fn();
    } catch (err) {
      this.abortEdit();
      throw err;
    }
    return this.endEdit();
  }

  endEdit(): CompoundEdit | null {
    if (this.depth === 0) return null;
    this.depth -= 1;
    if (this.depth > 0) return null; // nested — fold into the outer transaction

    if (this.pending.length === 0) {
      this.pendingLabel = "";
      return null;
    }

    const edit: CompoundEdit = {
      label: this.pendingLabel,
      children: this.pending,
      at: Date.now(),
    };
    this.pending = [];
    this.pendingLabel = "";

    this.undoStack.push(edit);
    if (this.undoStack.length > MAX_UNDO_DEPTH) this.undoStack.shift();
    // A new edit invalidates the redo tail — the conventional behaviour, and
    // the one the original app's undo table also has (docs/04 §7).
    this.redoStack = [];

    this.doc = { ...this.doc, revision: this.doc.revision + 1 };
    this.dirty = true;
    this.emit({ type: "ModelChanged", edit, doc: this.doc, source: "local" });
    return edit;
  }

  /** Rolls the open transaction back. Used when a gesture is cancelled. */
  abortEdit(): void {
    if (this.depth === 0) return;
    this.depth = 0;
    const undone = this.pending;
    this.pending = [];
    this.pendingLabel = "";
    for (let i = undone.length - 1; i >= 0; i--) {
      this.doc = applyDelta(this.doc, undone[i], true);
    }
  }

  // -- undo / redo ---------------------------------------------------------

  undo(): boolean {
    const edit = this.undoStack.pop();
    if (!edit) return false;
    this.doc = applyCompound(this.doc, edit, true);
    this.doc = { ...this.doc, revision: this.doc.revision + 1 };
    this.redoStack.push(edit);
    this.dirty = true;
    this.emit({ type: "ModelChanged", edit, doc: this.doc, source: "undo" });
    return true;
  }

  redo(): boolean {
    const edit = this.redoStack.pop();
    if (!edit) return false;
    this.doc = applyCompound(this.doc, edit, false);
    this.doc = { ...this.doc, revision: this.doc.revision + 1 };
    this.undoStack.push(edit);
    this.dirty = true;
    this.emit({ type: "ModelChanged", edit, doc: this.doc, source: "redo" });
    return true;
  }

  // -- whole-document replacement -----------------------------------------

  /** Loading a document from disk resets history; it is not an undoable edit. */
  replaceDocument(doc: NoteDocument): void {
    this.doc = doc;
    this.depth = 0;
    this.pending = [];
    this.undoStack = [];
    this.redoStack = [];
    this.dirty = false;
    this.emit({ type: "DocumentReplaced", doc });
  }
}
