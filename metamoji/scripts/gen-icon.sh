#!/bin/sh
# Regenerates the application icons from `src-tauri/icons/icon.svg`.
#
# Two steps, because `tauri icon` takes a raster source: rasterise the SVG to a
# 1024px PNG, then let Tauri derive every platform size, the .icns and the .ico
# from it.
#
# The rasteriser here is QuickLook, which is WebKit — the same engine the app
# itself runs in, and macOS-only. Any correct SVG renderer will do; note that
# ImageMagick's *built-in* MSVG renderer is not one of them, as it silently
# drops the ink stroke and leaves a blank sheet.
#
# Run: `bun run gen:icon`
set -eu

cd "$(dirname "$0")/.."
out=$(mktemp -d)
trap 'rm -rf "$out"' EXIT

qlmanage -t -s 1024 -o "$out" src-tauri/icons/icon.svg >/dev/null
bun run tauri icon "$out/icon.svg.png"

# A desktop app has no use for the mobile sets `tauri icon` also emits.
rm -rf src-tauri/icons/android src-tauri/icons/ios

echo "icons regenerated from src-tauri/icons/icon.svg"
