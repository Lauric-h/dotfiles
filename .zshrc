# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# EDITORS
export EDITOR=lvim
export GIT_EDITOR=lvim

# PLUGINS
plugins=(git)

# Disable verif for insecure directories
# Should stay before source of zsh
ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

# User configuration
## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Alias
alias cd="z"
alias sf="symfony"
alias sfc="symfony console"
alias sfproxy="symfony local:proxy:start"
alias sflog="symfony server:log"
alias sfserve="symfony serve -d"
alias sfstop="symfony server:stop"
alias gs="git status"
alias gpl="git pull"
alias g-am="git commit -am"
alias gp="git push"
alias gc="git checkout"
alias gcb="git checkout -b"
alias vim="lvim"
alias mtest="php -d memory_limit=-1 vendor/bin/phpunit"
alias arkitect="php vendor/bin/phparkitect check -g"
alias mitmstart="mitmproxy --mode upstream:http://127.0.0.1:7080 --ssl-insecure"

# ls replacement
alias ls="eza --icons=always -F -a -1"
alias lst="tree"

# GCLOUD# --- 

# Use gnu-sed
export PATH=/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH

# Zoxide enhance cd - keep in last
eval "$(zoxide init zsh)"

# MYSQL
export PATH="/opt/homebrew/opt/mysql-client@5.7/bin:$PATH"

# PHP
export PATH="/opt/homebrew/opt/php@8.3/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.3/sbin:$PATH"

# NVIM (LVIM)
export PATH="$HOME/.local/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mac-LHELFF06/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mac-LHELFF06/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mac-LHELFF06/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mac-LHELFF06/google-cloud-sdk/completion.zsh.inc'; fi

