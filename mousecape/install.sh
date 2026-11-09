#!/bin/sh
set -eu

here=$(cd "$(dirname "$0")" && pwd)
cape=local.murasame.pixelcursors.cape
capes="$HOME/Library/Application Support/Mousecape/capes"
mousecloak=/Applications/Mousecape.app/Contents/MacOS/mousecloak

mkdir -p "$capes"
ln -sf "$here/$cape" "$capes/$cape"

"$mousecloak" --apply "$capes/$cape" --suppressCopyright
"$mousecloak" --install-login --suppressCopyright
