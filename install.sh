#!/usr/bin/env bash
# Price Master: copies the skill into your Claude Code skills folder.
# Usage, from inside this folder:  bash install.sh
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
DEST_ROOT="${HOME}/.claude/skills"
mkdir -p "$DEST_ROOT"
src="$ROOT/price-master"
[ -f "$src/SKILL.md" ] || { echo "Can't find the skill. Run this from inside the Price Master folder." >&2; exit 1; }
dest="$DEST_ROOT/price-master"
if [ -e "$dest" ]; then
  read -r -p "There's already a price-master skill at $dest. Replace it? [y/N] " ok
  case "$ok" in y|Y) rm -rf "$dest" ;; *) echo "Left it as it is."; exit 0 ;; esac
fi
cp -R "$src" "$dest"
echo "Installed price-master to $dest"
echo "Start a new Claude Code session, then type /price-master and paste your rates and client list."
