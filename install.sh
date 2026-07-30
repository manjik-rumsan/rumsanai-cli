#!/usr/bin/env bash

set -e

REPO_RAW="https://raw.githubusercontent.com/manjik-rumsan/rumsanai-cli/main"

mkdir -p ~/.local/bin
curl -fsSL "$REPO_RAW/rumsanai" -o ~/.local/bin/rumsanai
chmod +x ~/.local/bin/rumsanai

echo "Installed to ~/.local/bin/rumsanai"

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
