#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

if ! command -v stow &>/dev/null; then
    echo "stow is not installed. Install it first."
    exit 1
fi

cd "$DOTFILES_DIR"
stow --target="$HOME/.config" .config

echo "Symlinks created successfully."
