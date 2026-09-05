/**
 * The IPC contract.
 *
 * `invoke("…")` is a string on one side and a `#[tauri::command]` on the other.
 * Neither compiler sees both, so renaming a command breaks the app only at
 * runtime, and only on the screen that happens to call it. This walks the two
 * sides and makes the mismatch a test failure instead.
 */

import { describe, expect, it } from "vitest";

const API = Object.values(
  import.meta.glob("./api.ts", { query: "?raw", import: "default", eager: true }),
).join("\n") as string;

const RUST = Object.values(
  import.meta.glob("../../src-tauri/src/*.rs", {
    query: "?raw",
    import: "default",
    eager: true,
  }),
) as string[];

/** Command names the frontend invokes, with or without a type parameter. */
const invoked = new Set(
  [...API.matchAll(/\binvoke(?:<[^>]*>)?\(\s*"([a-z0-9_]+)"/g)].map((m) => m[1]),
);

/** Command names registered in `generate_handler!`. */
const registered = (() => {
  const lib = RUST.find((source) => source.includes("generate_handler!"));
  if (!lib) throw new Error("lib.rs not found");
  const block = lib.slice(lib.indexOf("generate_handler!"));
  const list = block.slice(0, block.indexOf("]"));
  return new Set(
    [...list.matchAll(/(?:commands::)?([a-z0-9_]+)\s*,/g)].map((m) => m[1]),
  );
})();

describe("the IPC surface", () => {
  it("found both sides", () => {
    // A silent zero here would make every assertion below vacuously true.
    expect(invoked.size).toBeGreaterThan(20);
    expect(registered.size).toBeGreaterThan(20);
  });

  it("invokes only commands Rust registers", () => {
    const missing = [...invoked].filter((name) => !registered.has(name));
    expect(missing, "these would fail at runtime with 'command not found'").toEqual([]);
  });

  it("registers no command the frontend never calls", () => {
    const unused = [...registered].filter((name) => !invoked.has(name));
    expect(unused, "dead IPC surface — remove it or call it").toEqual([]);
  });
});
