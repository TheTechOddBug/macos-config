#!/bin/bash
# Symlink configs from this repo into $HOME. Idempotent.
set -e

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOME_DIR="${HOME}"

link() {
  local src="$REPO/$1"
  local dest="$HOME_DIR/$2"
  mkdir -p "$(dirname "$dest")"
  if [ -L "$dest" ] || [ -e "$dest" ]; then
    rm -f "$dest"
  fi
  ln -s "$src" "$dest"
  echo "  $dest -> $src"
}

echo "Linking configs from $REPO into $HOME_DIR"
link config .config/ghostty/config
link starship.toml .config/starship.toml

echo "Done."
