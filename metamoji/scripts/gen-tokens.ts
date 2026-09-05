/**
 * Generates `src/styles/tokens.css`.
 *
 * The colour roles are not hand-picked. They come out of Google's own
 * `@material/material-color-utilities`, which is the reference implementation of
 * the Material 3 colour system: a seed colour is converted to HCT, five tonal
 * palettes are derived from it, and each `md-sys-color-*` role is a specific
 * tone off a specific palette. Doing it by hand would produce colours that look
 * Material without satisfying the contrast pairings the spec guarantees.
 *
 * The seed is the original app's accent (docs/09 §5), so the palette still
 * belongs to MetaMoJi rather than to Material's default purple. The *fidelity*
 * scheme is chosen over the default tonal-spot one because tonal-spot
 * deliberately desaturates the seed (#32a5ff would come back as #33618d);
 * fidelity keeps the brand blue as a literal role — it lands on
 * `primary-container` in both light and dark. Every on/container pairing was
 * checked afterwards and clears 4.5:1.
 *
 * Run: `bun run gen:tokens`
 */

import { writeFileSync } from "node:fs";

import {
  Hct,
  MaterialDynamicColors,
  SchemeFidelity,
  argbFromHex,
  hexFromArgb,
} from "@material/material-color-utilities";

/** docs/09 §5: the original's accent blue. */
const SEED = "#32a5ff";

/** The roles the stylesheet actually uses. Emitting all 54 would be noise. */
const ROLES = [
  "primary", "onPrimary", "primaryContainer", "onPrimaryContainer",
  "secondary", "onSecondary", "secondaryContainer", "onSecondaryContainer",
  "tertiary", "onTertiary", "tertiaryContainer", "onTertiaryContainer",
  "error", "onError", "errorContainer", "onErrorContainer",
  "background", "onBackground",
  "surface", "onSurface", "surfaceVariant", "onSurfaceVariant",
  "surfaceDim", "surfaceBright",
  "surfaceContainerLowest", "surfaceContainerLow", "surfaceContainer",
  "surfaceContainerHigh", "surfaceContainerHighest",
  "inverseSurface", "inverseOnSurface", "inversePrimary",
  "outline", "outlineVariant", "shadow", "scrim", "surfaceTint",
] as const;

const kebab = (s: string) => s.replace(/[A-Z]/g, (c) => `-${c.toLowerCase()}`);

function scheme(dark: boolean): string {
  const s = new SchemeFidelity(Hct.fromInt(argbFromHex(SEED)), dark, 0);
  return ROLES.map((role) => {
    const color = (MaterialDynamicColors as unknown as Record<string, { getArgb(s: unknown): number }>)[role];
    return `    --md-sys-color-${kebab(role)}: ${hexFromArgb(color.getArgb(s))};`;
  }).join("\n");
}

/**
 * Everything below is spec-fixed rather than seed-derived: the shape scale,
 * elevation shadows, state-layer opacities, type scale and motion tokens are
 * the same numbers in every Material 3 app.
 */
const STATIC = `
    /* Shape scale (M3). \`--md-sys-shape-corner-full\` is a pill, not a circle. */
    --md-sys-shape-corner-none: 0;
    --md-sys-shape-corner-extra-small: 4px;
    --md-sys-shape-corner-small: 8px;
    --md-sys-shape-corner-medium: 12px;
    --md-sys-shape-corner-large: 16px;
    --md-sys-shape-corner-extra-large: 28px;
    --md-sys-shape-corner-full: 9999px;

    /* State layers. A Material control tints itself; it does not swap colour. */
    --md-sys-state-hover-opacity: 0.08;
    --md-sys-state-focus-opacity: 0.10;
    --md-sys-state-pressed-opacity: 0.10;
    --md-sys-state-dragged-opacity: 0.16;
    --md-sys-state-disabled-content-opacity: 0.38;
    --md-sys-state-disabled-container-opacity: 0.12;

    /* Motion. */
    --md-sys-motion-easing-standard: cubic-bezier(0.2, 0, 0, 1);
    --md-sys-motion-easing-standard-accelerate: cubic-bezier(0.3, 0, 1, 1);
    --md-sys-motion-easing-standard-decelerate: cubic-bezier(0, 0, 0, 1);
    --md-sys-motion-easing-emphasized-decelerate: cubic-bezier(0.05, 0.7, 0.1, 1);
    --md-sys-motion-easing-emphasized-accelerate: cubic-bezier(0.3, 0, 0.8, 0.15);
    --md-sys-motion-duration-short2: 100ms;
    --md-sys-motion-duration-short4: 200ms;
    --md-sys-motion-duration-medium2: 300ms;
    --md-sys-motion-duration-long2: 500ms;

    /*
     * Type scale. Roboto is Material's typeface and is bundled (latin only);
     * Japanese falls through to the platform face, which is what a native app
     * does — there is no Material-issued Japanese font to bundle.
     */
    --md-ref-typeface-plain: Roboto, "Hiragino Sans", "Noto Sans JP",
      "Yu Gothic UI", "Meiryo", system-ui, sans-serif;
    --md-ref-typeface-mono: "Roboto Mono", ui-monospace, SFMono-Regular, Menlo, monospace;

    --md-sys-typescale-headline-small-size: 24px;
    --md-sys-typescale-headline-small-line-height: 32px;
    --md-sys-typescale-title-large-size: 22px;
    --md-sys-typescale-title-large-line-height: 28px;
    --md-sys-typescale-title-medium-size: 16px;
    --md-sys-typescale-title-medium-line-height: 24px;
    --md-sys-typescale-title-medium-tracking: 0.15px;
    --md-sys-typescale-title-small-size: 14px;
    --md-sys-typescale-title-small-line-height: 20px;
    --md-sys-typescale-title-small-tracking: 0.1px;
    --md-sys-typescale-body-large-size: 16px;
    --md-sys-typescale-body-large-line-height: 24px;
    --md-sys-typescale-body-large-tracking: 0.5px;
    --md-sys-typescale-body-medium-size: 14px;
    --md-sys-typescale-body-medium-line-height: 20px;
    --md-sys-typescale-body-medium-tracking: 0.25px;
    --md-sys-typescale-body-small-size: 12px;
    --md-sys-typescale-body-small-line-height: 16px;
    --md-sys-typescale-body-small-tracking: 0.4px;
    --md-sys-typescale-label-large-size: 14px;
    --md-sys-typescale-label-large-line-height: 20px;
    --md-sys-typescale-label-large-tracking: 0.1px;
    --md-sys-typescale-label-medium-size: 12px;
    --md-sys-typescale-label-medium-line-height: 16px;
    --md-sys-typescale-label-medium-tracking: 0.5px;
    --md-sys-typescale-label-small-size: 11px;
    --md-sys-typescale-label-small-line-height: 16px;
    --md-sys-typescale-label-small-tracking: 0.5px;

    /*
     * Spacing. Material lays out on a 4dp grid; these are the steps this app
     * uses. Not \`md-sys\` tokens — Material 3 does not publish a spacing set.
     */
    --space-1: 4px;
    --space-2: 8px;
    --space-3: 12px;
    --space-4: 16px;
    --space-5: 24px;
    --space-6: 32px;

    /* App layout constants — not part of Material. */
    --nav-rail-width: 64px;
    --topbar-height: 64px;
    --statusbar-height: 48px;
`.replace(/\n$/, "");

/**
 * M3 elevation. The shadow colour is a role, so dark mode does not need its own
 * shadow list — only a different `--md-sys-color-shadow`.
 */
const ELEVATION = `
    --md-sys-elevation-0: none;
    --md-sys-elevation-1:
      0 1px 2px 0 color-mix(in srgb, var(--md-sys-color-shadow) 30%, transparent),
      0 1px 3px 1px color-mix(in srgb, var(--md-sys-color-shadow) 15%, transparent);
    --md-sys-elevation-2:
      0 1px 2px 0 color-mix(in srgb, var(--md-sys-color-shadow) 30%, transparent),
      0 2px 6px 2px color-mix(in srgb, var(--md-sys-color-shadow) 15%, transparent);
    --md-sys-elevation-3:
      0 1px 3px 0 color-mix(in srgb, var(--md-sys-color-shadow) 30%, transparent),
      0 4px 8px 3px color-mix(in srgb, var(--md-sys-color-shadow) 15%, transparent);
    --md-sys-elevation-4:
      0 2px 3px 0 color-mix(in srgb, var(--md-sys-color-shadow) 30%, transparent),
      0 6px 10px 4px color-mix(in srgb, var(--md-sys-color-shadow) 15%, transparent);
    --md-sys-elevation-5:
      0 4px 4px 0 color-mix(in srgb, var(--md-sys-color-shadow) 30%, transparent),
      0 8px 12px 6px color-mix(in srgb, var(--md-sys-color-shadow) 15%, transparent);
`.replace(/^\n|\n$/g, "");

const css = `/*
 * Material 3 design tokens.
 *
 * GENERATED by \`scripts/gen-tokens.ts\` — run \`bun run gen:tokens\` after
 * changing the seed. Do not edit by hand.
 *
 * The colour roles are computed from the seed ${SEED} (the original's accent,
 * docs/09 §5) by Google's \`material-color-utilities\`, so the contrast
 * pairings the spec promises — on-primary over primary, and so on — hold by
 * construction rather than by eye.
 *
 * Dark mode is a second generated scheme, not an inversion of the first
 * (docs/09 §5 notes the original is effectively light-only).
 */

:root {
  color-scheme: light dark;
}

:root,
:root[data-theme="light"] {
${scheme(false)}

${ELEVATION}
${STATIC}
}

:root[data-theme="dark"] {
${scheme(true)}
}

@media (prefers-color-scheme: dark) {
  :root:not([data-theme="light"]) {
${scheme(true)
  .split("\n")
  .map((l) => `  ${l}`)
  .join("\n")}
  }
}
`;

writeFileSync(new URL("../src/styles/tokens.css", import.meta.url), css);
console.log(`tokens.css written from seed ${SEED}`);
