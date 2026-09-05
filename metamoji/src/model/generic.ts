/**
 * The generic model tree — "model node + type tag + property dictionary".
 *
 * This is the interchange representation. It is deliberately schemaless, the
 * way the original app's `IModel` tree is (docs/01 §2, docs/04 §10), and it is
 * exactly what we persist: one row per node, `(model_id, parent_id, model_type,
 * props_json)`, as docs/04 §10 recommends.
 *
 * Everything that crosses a boundary speaks this form:
 *
 *     typed model  <-- converter -->  generic tree  <-- codec -->  .mmnote
 *                                          ^
 *                                          |
 *                                    .atdoc importer
 *
 * Keeping the importer's output and the storage format on the same shape is
 * what makes legacy import a converter problem rather than a parallel pipeline.
 */

export type PropScalar = null | boolean | number | string;

/** Binary payload, base64-encoded so the dictionary stays JSON-serialisable. */
export interface PropBlob {
  $blob: string;
}

/** Flat coordinate array, mirroring the original's `PointArray` (docs/05 §1). */
export interface PropPoints {
  $points: number[];
}

/** Reference to another node by id, mirroring the original's `IModel` refs. */
export interface PropRef {
  $ref: string;
}

export type PropValue =
  | PropScalar
  | PropBlob
  | PropPoints
  | PropRef
  | PropValue[]
  | { [key: string]: PropValue };

export type PropDict = Record<string, PropValue>;

export interface GenericModel {
  id: string;
  parentId: string | null;
  modelType: string;
  props: PropDict;
  /** Child ids in paint / document order. */
  children: string[];
}

export interface GenericTree {
  rootId: string;
  models: Record<string, GenericModel>;
}

// ---------------------------------------------------------------------------
// Construction
// ---------------------------------------------------------------------------

export function emptyTree(rootId: string, rootType: string): GenericTree {
  return {
    rootId,
    models: {
      [rootId]: { id: rootId, parentId: null, modelType: rootType, props: {}, children: [] },
    },
  };
}

export function addNode(
  tree: GenericTree,
  node: Omit<GenericModel, "children"> & { children?: string[] },
): GenericModel {
  const full: GenericModel = { ...node, children: node.children ?? [] };
  tree.models[full.id] = full;
  if (full.parentId) {
    const parent = tree.models[full.parentId];
    if (!parent) throw new Error(`addNode: unknown parent ${full.parentId}`);
    if (!parent.children.includes(full.id)) parent.children.push(full.id);
  }
  return full;
}

export function childrenOf(tree: GenericTree, id: string): GenericModel[] {
  const node = tree.models[id];
  if (!node) return [];
  return node.children.map((c) => tree.models[c]).filter((c): c is GenericModel => Boolean(c));
}

export function childrenOfType(tree: GenericTree, id: string, modelType: string): GenericModel[] {
  return childrenOf(tree, id).filter((c) => c.modelType === modelType);
}

// ---------------------------------------------------------------------------
// Typed property readers
//
// The original's `IModel` exposes getPropertyAsInt/Double/Bool/String/... and
// silently substitutes a default when a key is absent or mistyped (docs/05 §1).
// We reproduce that tolerance here, because imported documents routinely carry
// properties whose type we guessed wrong — a note should still open.
// ---------------------------------------------------------------------------

export function getNumber(props: PropDict, key: string, fallback: number): number {
  const v = props[key];
  if (typeof v === "number" && Number.isFinite(v)) return v;
  if (typeof v === "string") {
    const n = Number(v);
    if (Number.isFinite(n)) return n;
  }
  return fallback;
}

export function getInt(props: PropDict, key: string, fallback: number): number {
  return Math.trunc(getNumber(props, key, fallback));
}

export function getBool(props: PropDict, key: string, fallback: boolean): boolean {
  const v = props[key];
  if (typeof v === "boolean") return v;
  if (typeof v === "number") return v !== 0;
  if (v === "true") return true;
  if (v === "false") return false;
  return fallback;
}

export function getString(props: PropDict, key: string, fallback: string): string {
  const v = props[key];
  if (typeof v === "string") return v;
  if (typeof v === "number" || typeof v === "boolean") return String(v);
  return fallback;
}

export function getOptionalString(props: PropDict, key: string): string | undefined {
  const v = props[key];
  return typeof v === "string" ? v : undefined;
}

export function getPoints(props: PropDict, key: string): number[] | undefined {
  const v = props[key];
  if (v && typeof v === "object" && !Array.isArray(v) && "$points" in v) {
    return (v as PropPoints).$points;
  }
  if (Array.isArray(v) && v.every((n) => typeof n === "number")) return v as number[];
  return undefined;
}

export function getList(props: PropDict, key: string): PropValue[] {
  const v = props[key];
  return Array.isArray(v) ? v : [];
}

export function getDict(props: PropDict, key: string): PropDict | undefined {
  const v = props[key];
  if (v && typeof v === "object" && !Array.isArray(v) && !("$blob" in v) && !("$points" in v) && !("$ref" in v)) {
    return v as PropDict;
  }
  return undefined;
}

/** Drops keys whose value equals the default, keeping stored dictionaries small. */
export function putIfChanged<T extends PropScalar>(
  props: PropDict,
  key: string,
  value: T,
  fallback: T,
): void {
  if (value !== fallback) props[key] = value;
}

/**
 * Checks that a value really is a model tree before it is trusted.
 *
 * A payload arriving from a server is untrusted input: it may be corrupt, from
 * a future schema, or simply not one of our documents. Validating the shape
 * here turns that into a clear message instead of a `TypeError` thrown from
 * somewhere deep in the converter.
 */
export function isGenericTree(value: unknown): value is GenericTree {
  if (!value || typeof value !== "object" || Array.isArray(value)) return false;
  const tree = value as Partial<GenericTree>;

  if (typeof tree.rootId !== "string" || tree.rootId === "") return false;
  if (!tree.models || typeof tree.models !== "object" || Array.isArray(tree.models)) return false;
  if (!(tree.rootId in tree.models)) return false;

  for (const [id, model] of Object.entries(tree.models)) {
    if (!model || typeof model !== "object") return false;
    const m = model as Partial<GenericModel>;
    if (m.id !== id) return false;
    if (typeof m.modelType !== "string") return false;
    if (!Array.isArray(m.children)) return false;
  }
  return true;
}
