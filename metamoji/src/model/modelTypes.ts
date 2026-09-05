/**
 * MODELTYPE tag catalogue.
 *
 * These string tags are the on-disk type discriminators inherited from the
 * original app's model tree (docs/05-unit-property-schema.md §3). We do NOT
 * reuse the original binary format, but we keep the tag vocabulary so that the
 * generic model tree stays recognisable and the `.atdoc` importer can map
 * straight onto it without a translation table.
 */

// --- Page tree ---
export const MT_DOC_META = "docmeta";
export const MT_NOTE = "$freenote";
export const MT_SHARE_NOTE = "$sharenote";
export const MT_PAGE = "$page";
export const MT_LAYER = "$layer";

// --- Units implemented in phase A ---
export const MT_DRAW = "$draw";
export const MT_TEXT = "$text";
export const MT_IMAGE = "$image";
export const MT_BG_IMAGE = "$bgimage";
export const MT_PDF = "$pdf";
export const MT_FLIP = "$flipunit";
export const MT_SHAPE = "$shape";
export const MT_FORM = "$form";
export const MT_SURVEY = "$surveyunit";

/** Placeholder preserving units we cannot represent (unknown/deferred types). */
export const MT_DUMMY = "$dummy";

/** Unit tags recognised by the original app but not implemented here yet. */
export const MT_DEFERRED = [
  "$video",
  "$soundunit",
  "$web",
  "$bgform",
  "$formparts",
  "$schedule",
  "$labeledlist",
] as const;

export const UNIT_MODEL_TYPES = [
  MT_DRAW,
  MT_TEXT,
  MT_IMAGE,
  MT_BG_IMAGE,
  MT_PDF,
  MT_FLIP,
  MT_SHAPE,
  MT_FORM,
  MT_SURVEY,
  MT_DUMMY,
] as const;

export type UnitModelType = (typeof UNIT_MODEL_TYPES)[number];

export function isUnitModelType(t: string): t is UnitModelType {
  return (UNIT_MODEL_TYPES as readonly string[]).includes(t);
}

export function isDeferredUnitModelType(t: string): boolean {
  return (MT_DEFERRED as readonly string[]).includes(t);
}
