import { beforeEach, describe, expect, it, vi } from "vitest";

import { getLocale, setLocale, subscribeLocale, t } from "./index";
import { en } from "./en";

beforeEach(() => {
  setLocale("ja");
});

describe("t", () => {
  it("returns the source string in Japanese", () => {
    expect(t("ペン")).toBe("ペン");
  });

  it("translates into English", () => {
    setLocale("en");
    expect(t("ペン")).toBe("Pen");
    expect(t("消しゴム")).toBe("Eraser");
  });

  it("falls back to the source string when a translation is missing", () => {
    setLocale("en");
    // The point of keying on the source: an untranslated string is still
    // readable rather than showing a bare key.
    expect(t("まだ翻訳されていない文字列")).toBe("まだ翻訳されていない文字列");
  });

  it("substitutes named parameters", () => {
    expect(t("{count} 件", { count: 3 })).toBe("3 件");
    setLocale("en");
    expect(t("{count} 件", { count: 3 })).toBe("3 notes");
  });

  it("leaves an unmatched placeholder alone rather than printing undefined", () => {
    expect(t("{count} 件", { other: 1 })).toBe("{count} 件");
  });

  it("substitutes every occurrence", () => {
    setLocale("en");
    expect(t("{count} 件", { count: 0 })).toBe("0 notes");
  });
});

describe("locale switching", () => {
  it("notifies subscribers", () => {
    const listener = vi.fn();
    const unsubscribe = subscribeLocale(listener);

    setLocale("en");
    expect(listener).toHaveBeenCalledTimes(1);
    expect(getLocale()).toBe("en");

    // Setting the same locale again is not a change.
    setLocale("en");
    expect(listener).toHaveBeenCalledTimes(1);

    unsubscribe();
    setLocale("ja");
    expect(listener).toHaveBeenCalledTimes(1);
  });

  it("sets the document language, which matters for CJK line breaking", () => {
    setLocale("en");
    expect(document.documentElement.lang).toBe("en");
    setLocale("ja");
    expect(document.documentElement.lang).toBe("ja");
  });
});

describe("the English dictionary", () => {
  it("has no empty translations", () => {
    for (const [key, value] of Object.entries(en)) {
      expect(value.trim(), `empty translation for ${key}`).not.toBe("");
    }
  });

  it("keeps every placeholder its key declares", () => {
    // A translation that drops a placeholder silently loses the value.
    for (const [key, value] of Object.entries(en)) {
      const placeholders = [...key.matchAll(/\{(\w+)\}/g)].map((m) => m[1]).sort();
      const translated = [...value.matchAll(/\{(\w+)\}/g)].map((m) => m[1]).sort();
      expect(translated, `placeholder mismatch for ${key}`).toEqual(placeholders);
    }
  });
});

/**
 * Keying on the source string means a rename in a component silently orphans
 * its translation — nothing throws, the English build just reverts to Japanese
 * for that one label. These two tests are what make the dictionary
 * maintainable.
 */
describe("dictionary coverage", () => {
  /**
   * Every app source file, read at build time by Vite. `import.meta.glob` is
   * used rather than `node:fs` so the test needs no Node type definitions and
   * resolves paths the same way the bundler does.
   */
  const SOURCES = import.meta.glob("../**/*.{ts,tsx}", {
    query: "?raw",
    import: "default",
    eager: true,
  }) as Record<string, string>;

  function scan(pattern: RegExp): Set<string> {
    const found = new Set<string>();
    for (const [path, source] of Object.entries(SOURCES)) {
      if (path.includes(".test.")) continue;
      for (const m of source.matchAll(pattern)) {
        found.add(m[1].replace(/\\"/g, '"'));
      }
    }
    return found;
  }

  /** Strings handed to `t()` as a literal. */
  const translated = () => scan(/\bt\(\s*"((?:[^"\\]|\\.)*)"/g);

  /**
   * Anything that could reach `t()` indirectly: labels are also passed as
   * `t(tool.label)` over a table of them, and those are exactly the entries an
   * orphan check must not flag. Japanese literals catch most; the `label:`
   * scan catches the ones that happen to be ASCII ("SSO", "QR コード").
   */
  const indirect = () =>
    new Set([
      ...scan(/"((?:[^"\\]|\\.)*[ぁ-んァ-ヶ一-龯][^"\\]*)"/g),
      ...scan(/\blabel:\s*"((?:[^"\\]|\\.)*)"/g),
    ]);

  it("translates every string the app asks for", () => {
    const missing = [...translated()].filter((s) => !(s in en));
    expect(missing, "add these to en.ts").toEqual([]);
  });

  it("has no entries the app no longer uses", () => {
    const live = indirect();
    const orphans = Object.keys(en).filter((key) => !live.has(key));
    expect(orphans, "remove these from en.ts, or a rename dropped a label")
      .toEqual([]);
  });
});
