# ZSH Configuration
# Author: Álvaro Román Gómez

# Export custom scripts ~/bin to PATH env variable
export PATH="$HOME/bin:$PATH"

# STARSHIP PROMPT
eval "$(starship init zsh)"

# ZSH modules path
ZSH_MODULES_PATH='/Users/alvaroroman/.dotfiles/.config/zsh'

# Source ZSH modules
source $ZSH_MODULES_PATH/aliases.zsh

# HISTORY SETUP
HISTFILE=$HOME/•zhistory
SAVEHIST=1000
HISTSIZE=999
setopt SHARE_HISTORY # Comparte el historial entre todas las sesiones.
setopt hist_expire_dups_first
setopt HIST_IGNORE_ALL_DUPS # Elimina todas las entradas duplicadas en el historial, dejando solo la más reciente.
setopt hist_ignore_dups # No guarda un comando en el historial si es un duplicado del último comando ejecutado.
setopt HIST_IGNORE_SPACE # No guarda los comandos que comienzan con un espacio en el historial.
setopt HIST_REDUCE_BLANKS # Elimina los espacios en blanco redundantes antes de guardar el comando en el historial.
setopt hist_verify # Solicita confirmación antes de ejecutar un comando recuperado del historial con el cursor hacia arriba.
setopt HIST_EXPIRE_DUPS_FIRST # Prioriza la eliminación de entradas duplicadas al expirar el historial, en lugar de las más antiguas.

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
# Set up zoxide
eval "$(zoxide init zsh)"
# Homebrew
# eval "$(brew shellenv)"

# ZSH PLUGINS
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=(/opt/homebrew/share/zsh-completions/src $fpath)

# Activar las funciones de autocompletado y prompts
autoload -Uz compinit promptinit
compinit
promptinit