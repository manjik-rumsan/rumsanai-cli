#!/usr/bin/env bash

set -e

mkdir -p ~/.local/bin
cp rumsanai ~/.local/bin/rumsanai
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