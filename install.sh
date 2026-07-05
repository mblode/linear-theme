#!/usr/bin/env bash
set -euo pipefail

# Installs Linear themes for Ghostty, cmux, Zed, and Alacritty.
# Ghostty + cmux share the same theme files; installing to the XDG data
# dir (~/.local/share/ghostty/themes) makes both apps resolve them.

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

install_ghostty() {
  local xdg_dir="${XDG_DATA_HOME:-$HOME/.local/share}/ghostty/themes"
  local cfg_dir="$HOME/.config/ghostty/themes"
  mkdir -p "$xdg_dir" "$cfg_dir"
  cp "$REPO_DIR"/ghostty/linear-* "$xdg_dir/"
  cp "$REPO_DIR"/ghostty/linear-* "$cfg_dir/"
  echo "ghostty/cmux: installed to $xdg_dir and $cfg_dir"
  echo '  add to ~/.config/ghostty/config:  theme = light:linear-light,dark:linear-dark'
}

install_zed() {
  local dir="$HOME/.config/zed/themes"
  mkdir -p "$dir"
  cp "$REPO_DIR"/zed/linear.json "$dir/"
  echo "zed: installed to $dir (select Linear Dark / Linear Light with cmd-k cmd-t)"
}

install_alacritty() {
  local dir="$HOME/.config/alacritty/themes"
  mkdir -p "$dir"
  cp "$REPO_DIR"/terminals/alacritty-*.toml "$dir/"
  echo "alacritty: installed to $dir"
  echo '  add to alacritty.toml:  [general] import = ["~/.config/alacritty/themes/alacritty-dark.toml"]'
}

case "${1:-all}" in
  ghostty|cmux) install_ghostty ;;
  zed) install_zed ;;
  alacritty) install_alacritty ;;
  all)
    install_ghostty
    install_zed
    install_alacritty
    ;;
  *)
    echo "usage: ./install.sh [all|ghostty|cmux|zed|alacritty]" >&2
    echo "  (kitty, wezterm, iterm2, warp: copy from terminals/ — see README)" >&2
    exit 1
    ;;
esac
