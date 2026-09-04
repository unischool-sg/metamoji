import { useSyncExternalStore } from "react";

import { getLocale, subscribeLocale, t } from "./index";

/**
 * Re-renders the calling component when the language changes.
 *
 * `useSyncExternalStore` rather than a context provider: the locale is read by
 * nearly every component, and a context would re-render the whole tree through
 * a provider whose value changes only on a language switch anyway.
 */
export function useTranslation() {
  const locale = useSyncExternalStore(subscribeLocale, getLocale, getLocale);
  return { t, locale };
}
