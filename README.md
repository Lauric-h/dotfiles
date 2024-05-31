# INSTALL ON FRESH COMPUTER (MACOS)

## 1. Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
  
## 2. Install GIT
```
brew install git
```

## 3. Generate SSH key
```
cd ~/.dotfiles/bin
chmod +x generate-ssh.sh
./generate-ssh.sh
```

Add it to Github account

## 4. Clone repository
```
cd
git clone git@github.com:Lauric-h/dotfiles.git
```

## 5. Launch install file
```
cd ~/.dotfiles/bin
chmod +x install.sh
./install.sh
```

Install script will:
- Install Brew dependencies with `brew.sh`
- Stow dotfiles (creates symlinks) to setup configs:
    - macos
    - ideavim.rc
    - git
    - zsh
    - lunarvim 
- Remap CTLR to FN and vice versa

## 6. Install LUNARVIM
```
LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)
```

## 7. Setup Apple products
- Manually activate iCloud and AppleID
- Manuall remap CMD+q to something else

## 8. Install php-redis
```
pecl install redis
```

# REINSTALL HOMEBREW DEPENDENCIES
```
cd ~/.dotfiles/bin
./brew.sh
```
