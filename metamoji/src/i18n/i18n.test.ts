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
