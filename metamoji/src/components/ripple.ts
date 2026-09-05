/**
 * Material's ripple.
 *
 * Everything else in the Material state model — hover, focus, pressed, dragged
 * — is a flat state layer and lives in CSS. The ripple is the one part that
 * cannot: it originates at the pointer, so its centre is only known at the
 * moment of the press.
 *
 * This is installed once as a delegated listener rather than wired into each
 * component. Ripples are a property of "this thing is a Material control",
 * which is exactly what the class list already says, so asking every button to
 * import a hook would be duplicating information the DOM already has.
 */

/**
 * The controls that ripple. A single list, so there is one place to look when
 * something is missing one.
 */
const RIPPLE_TARGETS = [
  ".btn",
  ".icon-btn",
  ".fab",
  ".tool-btn",
  ".menu__item",
  ".sidebar-item",
  ".pen-row",
  ".seg-btn",
  ".shape-btn",
  ".page-strip__add",
  ".note-card__open",
].join(",");

const DURATION_MS = 450;

export function installRipple(root: Document = document): () => void {
  const onPointerDown = (event: PointerEvent) => {
    if (event.button !== 0) return;

    const target = (event.target as Element | null)?.closest?.(RIPPLE_TARGETS);
    if (!(target instanceof HTMLElement)) return;
    if (target.hasAttribute("disabled")) return;
    // A user who has asked for less motion gets the state layer and no ripple.
    if (window.matchMedia("(prefers-reduced-motion: reduce)").matches) return;

    const rect = target.getBoundingClientRect();
    // Big enough to reach the far corner from wherever the press landed.
    const radius = Math.hypot(
      Math.max(event.clientX - rect.left, rect.right - event.clientX),
      Math.max(event.clientY - rect.top, rect.bottom - event.clientY),
    );

    const ripple = document.createElement("span");
    ripple.className = "md-ripple";
    ripple.style.width = ripple.style.height = `${radius * 2}px`;
    ripple.style.left = `${event.clientX - rect.left - radius}px`;
    ripple.style.top = `${event.clientY - rect.top - radius}px`;

    target.appendChild(ripple);
    // Not `animationend`: a ripple on an element removed mid-animation (a menu
    // item closing its own menu) would never fire it, and the node would leak.
    window.setTimeout(() => ripple.remove(), DURATION_MS);
  };

  root.addEventListener("pointerdown", onPointerDown, true);
  return () => root.removeEventListener("pointerdown", onPointerDown, true);
}
