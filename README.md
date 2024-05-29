# Install(wip)

- Install Homebrew
- Clone directory
- Install Homebrew dependencies
- Install lvim
- Stow dotfiles
- Set global gitignore

Install Homebrew
```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```

Remapping:
- Copy LaunchAgent to Library/LaunchAgent/
- Load the LaunchAgent
- Check that it works

Install LVIM
```
LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)
```

Manually activate iCloud and AppleID
Manuall remap CMD+q to something else

Install php-redis
```pecl install redis```
-> Check if you have to echo something to PATH + add extension=redis.so in php.ini
