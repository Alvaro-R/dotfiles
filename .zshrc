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

