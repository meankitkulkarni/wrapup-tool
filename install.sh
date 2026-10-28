#!/usr/bin/env bash
chmod +x "$(pwd)/bin/"*
mkdir -p "$HOME/.local/bin"
ln -sf "$(pwd)/bin/"* "$HOME/.local/bin/"

if ! grep -q ".local/bin" "$HOME/.bashrc" 2>/dev/null; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
fi
if ! grep -q ".local/bin" "$HOME/.zshrc" 2>/dev/null; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.zshrc"
fi
if ! grep -q ".local/bin" "$HOME/.bash_profile" 2>/dev/null; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bash_profile"
fi

echo "✔ Installed wrapup, clean-junk, save-snap, and fresh-screen to ~/.local/bin"
echo "Run: export PATH=\"\$HOME/.local/bin:\$PATH\" or restart your terminal."