#!/bin/sh
set -eu
command -v python3 >/dev/null 2>&1 || { echo 'Python 3 is required.' >&2; exit 1; }
project_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
install -d "$HOME/.local/bin" "$HOME/.local/share/guts-banner"
install -m 755 "$project_dir/guts-banner" "$HOME/.local/bin/guts-banner"
install -m 644 "$project_dir/art.json" "$HOME/.local/share/guts-banner/art.json"
printf '%s\n' 'Installed. Run: ~/.local/bin/guts-banner' 'Add ~/.local/bin to PATH if needed. See README.md for shell startup.'
