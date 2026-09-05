/**
 * A dropdown menu.
 *
 * docs/02 §4 counted 182 dialog layouts in the original and noted its Android
 * menu resources are not portable, so this is written from scratch — and kept
 * to one component, because the alternative is how the original ended up with
 * 182 of them.
 */

import { useEffect, useRef, useState } from "react";

import { Icon, type IconName } from "./Icon";

export interface MenuItem {
  id: string;
  label: string;
  icon?: IconName;
  shortcut?: string;
  disabled?: boolean;
  danger?: boolean;
  /** Shows a leading check, for items that toggle rather than act. */
  checked?: boolean;
  /** Renders a divider above this item. */
  separatorBefore?: boolean;
  onSelect: () => void;
}

interface Props {
  /** Omit for an icon-only trigger, which Material renders as an icon button. */
  label?: string;
  icon?: IconName;
  items: MenuItem[];
  title?: string;
  align?: "left" | "right";
  className?: string;
}

export function Menu({ label, icon, items, title, align = "right", className }: Props) {
  const [open, setOpen] = useState(false);
  const rootRef = useRef<HTMLDivElement>(null);
  const hasLeading = items.some((item) => item.icon || item.checked !== undefined);

  // Close on an outside click or Escape. Both are needed: a menu that only
  // closes on selection strands the user who opened it by mistake.
  useEffect(() => {
    if (!open) return;

    const onPointerDown = (e: PointerEvent) => {
      if (!rootRef.current?.contains(e.target as Node)) setOpen(false);
    };
    const onKeyDown = (e: KeyboardEvent) => {
      if (e.key === "Escape") {
        e.stopPropagation();
        setOpen(false);
      }
    };

    window.addEventListener("pointerdown", onPointerDown);
    window.addEventListener("keydown", onKeyDown, true);
    return () => {
      window.removeEventListener("pointerdown", onPointerDown);
      window.removeEventListener("keydown", onKeyDown, true);
    };
  }, [open]);

  return (
    <div className={`menu ${className ?? ""}`} ref={rootRef}>
      <button
        type="button"
        className={label ? "btn btn--text" : "icon-btn"}
        onClick={() => setOpen((v) => !v)}
        aria-haspopup="menu"
        aria-expanded={open}
        title={title ?? label}
      >
        {icon && <Icon name={icon} size={label ? 18 : 24} />}
        {label}
        {/* Material marks a menu trigger with a trailing caret. */}
        {label && <Icon name="keyboard_arrow_down" size={18} />}
        {!label && !icon && <Icon name="more_vert" />}
        {!label && <span className="sr-only">{title ?? ""}</span>}
      </button>

      {open && (
        <div className="menu__list" role="menu" data-align={align}>
          {items.map((item) => (
            <div key={item.id}>
              {item.separatorBefore && <div className="menu__separator" />}
              <button
                type="button"
                role="menuitem"
                className="menu__item"
                data-danger={item.danger ? "true" : undefined}
                disabled={item.disabled}
                onClick={() => {
                  setOpen(false);
                  item.onSelect();
                }}
              >
                <span className="menu__item__lead">
                  {/*
                   * Material reserves the leading slot across a whole menu, so
                   * a menu with any icon or check indents every item to match —
                   * otherwise the labels stagger.
                   */}
                  {hasLeading && (
                    <span className="menu__item__icon">
                      {item.checked ? (
                        <Icon name="check" size={18} />
                      ) : item.icon ? (
                        <Icon name={item.icon} size={18} />
                      ) : null}
                    </span>
                  )}
                  {item.label}
                </span>
                {item.shortcut && <kbd>{item.shortcut}</kbd>}
              </button>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
