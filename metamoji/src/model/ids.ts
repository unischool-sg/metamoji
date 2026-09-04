let counter = 0;

/**
 * Model ids are opaque strings. We prefix by kind purely so that a dump of the
 * model table is readable while debugging; nothing parses these.
 */
export function newId(prefix: string): string {
  counter += 1;
  const rand = Math.random().toString(36).slice(2, 10);
  return `${prefix}_${Date.now().toString(36)}${counter.toString(36)}${rand}`;
}

export const newNoteId = () => newId("note");
export const newPageId = () => newId("page");
export const newLayerId = () => newId("layer");
export const newUnitId = () => newId("unit");
export const newStrokeId = () => newId("stroke");
export const newTicket = () => newId("asset");
