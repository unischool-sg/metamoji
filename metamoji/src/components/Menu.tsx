/**
 * A dropdown menu.
 *
 * docs/02 §4 counted 182 dialog layouts in the original and noted its Android
 * menu resources are not portable, so this is written from scratch — and kept
 * to one component, because the alternative is how the original ended up with
 * 182 of them.
 */

import { useEffect, useRef, useState, type ReactNode } from "react";

export interface MenuItem {
  id: string;
  label: string;
  shortcut?: string;
  disabled?: boolean;
  danger?: boolean;
  /** Renders a divider above this item. */
  separatorBefore?: boolean;
  onSelect: () => void;
}

interface Props {
  label: ReactNode;
  items: MenuItem[];
  title?: string;
  align?: "left" | "right";
  className?: string;
}

export function Menu({ label, items, title, align = "right", className }: Props) {
  const [open, setOpen] = useState(false);
  const rootRef = useRef<HTMLDivElement>(null);

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
        onClick={() => setOpen((v) => !v)}
        aria-haspopup="menu"
        aria-expanded={open}
        title={title}
      >
        {label}
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
                <span>{item.label}</span>
                {item.shortcut && <kbd>{item.shortcut}</kbd>}
              </button>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
