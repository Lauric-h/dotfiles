# Dotfiles

Personal macOS setup using **chezmoi** and **Homebrew**.

---

## 🚀 Install

```bash
brew install chezmoi
chezmoi init https://github.com/<your-username>/dotfiles.git
chezmoi apply
```

---

## 📦 Includes

- zsh + Starship
- Neovim (lazy.nvim + Treesitter)
- Tmux
- Homebrew packages (PHP, Node, Go, Docker, etc.)

---

## 🔄 Update

Add a tool:

```bash
brew install <tool>
chezmoi edit ~/.Brewfile
```

Update Neovim plugins:

```bash
nvim
:Lazy update
```

---

## 📁 Structure

```
dot_config/
dot_zshrc
dot_tmux.conf
dot_Brewfile
.chezmoiscripts/
docs/
```
