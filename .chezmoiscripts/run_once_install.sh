#!/bin/bash
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

# Install TPM if not present
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# Install tmux plugins
tmux new-session -d
~/.tmux/plugins/tpm/bin/install_plugins
tmux kill-server

echo "✅ Setup complete!"
