# ZSH Configuration
# Author: Álvaro Román Gómez

# Export custom scripts ~/bin to PATH env variable
export PATH="$HOME/bin:$PATH"

# STARSHIP PROMPT
eval "$(starship init zsh)"

# Activar las funciones de autocompletado y prompts
autoload -U compinit promptinit
compinit
promptinit

# ZSH modules path
ZSH_MODULES_PATH='/Users/alvaroroman/.dotfiles/.config/zsh'

# Source ZSH modules
source $ZSH_MODULES_PATH/aliases.zsh

# HISTORY SETUP
HISTFILE=$HOME/•zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
# Set up zoxide
eval "$(zoxide init zsh)"