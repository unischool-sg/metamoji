/**
 * Translation.
 *
 * docs/09 §1 records that the original ships a single `values/strings.xml` with
 * no locale variants — Japanese is the de facto source language. This keeps
 * that: the Japanese string *is* the key. An untranslated string therefore
 * falls back to readable Japanese rather than to a bare key like
 * `editor.tool.pen`, and adding a language means adding a dictionary rather
 * than touching every call site.
 *
 * The trade is that changing Japanese wording breaks that entry's translation.
 * For an app this size that is cheaper than maintaining a key namespace.
 */

import { en } from "./en";

export type Locale = "ja" | "en";

const DICTIONARIES: Record<Locale, Record<string, string>> = {
  ja: {},
  en,
};

const STORAGE_KEY = "metamoji.locale";

let current: Locale = detectInitialLocale();
const listeners = new Set<() => void>();

function detectInitialLocale(): Locale {
  if (typeof window === "undefined") return "ja";
  const stored = window.localStorage?.getItem(STORAGE_KEY);
  if (stored === "ja" || stored === "en") return stored;
  return navigator.language?.toLowerCase().startsWith("ja") ? "ja" : "en";
}

export function getLocale(): Locale {
  return current;
}

export function setLocale(locale: Locale): void {
  if (locale === current) return;
  current = locale;
  try {
    window.localStorage?.setItem(STORAGE_KEY, locale);
  } catch {
    // A private-mode browser without storage still gets the language change;
    // it just will not be remembered.
  }
  document.documentElement.lang = locale;
  for (const listener of listeners) listener();
}

export function subscribeLocale(listener: () => void): () => void {
  listeners.add(listener);
  return () => listeners.delete(listener);
}

/**
 * Translates a source string.
 *
 * `params` substitutes `{name}` placeholders, so a sentence stays one
 * translatable unit instead of being concatenated from fragments — which is
 * what makes word order impossible to get right in another language.
 */
export function t(source: string, params?: Record<string, string | number>): string {
  const translated = DICTIONARIES[current][source] ?? source;
  if (!params) return translated;
  return translated.replace(/\{(\w+)\}/g, (match, key) =>
    key in params ? String(params[key]) : match,
  );
}

export const LOCALE_NAMES: Record<Locale, string> = {
  ja: "日本語",
  en: "English",
};
