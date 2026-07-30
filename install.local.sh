#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.local/bin
cp "$SCRIPT_DIR/rumsanai" ~/.local/bin/rumsanai
chmod +x ~/.local/bin/rumsanai

echo "Installed to ~/.local/bin/rumsanai (from local copy)"

if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo ""
    echo "⚠️  ~/.local/bin is not in your PATH."
    echo "Add this to ~/.bashrc or ~/.zshrc:"
    echo ""
    echo 'export PATH="$HOME/.local/bin:$PATH"'
fi

echo ""
echo "Done."
echo ""
echo "Usage:"
echo "  rumsanai"
echo "  rumsanai --claude enable"
echo "  rumsanai --claude disable"
echo "  rumsanai --claude config"
