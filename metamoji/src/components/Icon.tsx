/**
 * A Material Symbol.
 *
 * Renders inline SVG from generated path data (`icons.generated.ts`) rather
 * than an icon font: no FOUT, no network request in a desktop app, and the
 * glyph inherits `currentColor` so a control's state layer recolours the icon
 * for free.
 *
 * Icons are decorative by default. A Material icon-only button carries its own
 * accessible name — `aria-label`, or a visually hidden span — and a duplicate
 * name on the glyph would make screen readers announce it twice. Pass `label`
 * only when the icon really is the sole carrier of meaning.
 */

import { ICON_PATHS, type IconName } from "./icons.generated";

export type { IconName };

interface Props {
  name: IconName;
  /**
   * Rendered size in px. Material's default is 24; 20 is the dense size used
   * inside list rows and chips, 18 the smallest that stays legible.
   */
  size?: number;
  className?: string;
  label?: string;
}

export function Icon({ name, size = 24, className, label }: Props) {
  return (
    <svg
      className={className ? `icon ${className}` : "icon"}
      // Material Symbols are drawn on a 960 grid with a top-left origin.
      viewBox="0 -960 960 960"
      width={size}
      height={size}
      fill="currentColor"
      role={label ? "img" : undefined}
      aria-label={label}
      aria-hidden={label ? undefined : true}
      focusable="false"
    >
      <path d={ICON_PATHS[name]} />
    </svg>
  );
}
