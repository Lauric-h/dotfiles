#!/bin/bash
set -e

echo "🚀 Installing Homebrew packages..."

# Install Brew packages
brew bundle --file="$HOME/.Brewfile"

echo "🔧 Starting services..."

# Start services (optionnel)
brew services start mysql || true
brew services start redis || true

echo "📦 Installing Neovim plugins..."

# Install nvim plugins (headless)
nvim --headless "+Lazy! sync" +qa || true

echo "✅ Setup complete!"
