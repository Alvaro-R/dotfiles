#!/bin/bash

# DOTFILES PATHS
DOTFILES_DIR="$HOME/.dotfiles"

## VSCODE
VSCODE_CONFIG_DIR="$HOME/Library/Application Support/Code/User"
VSCODE_CONFIG_FILE="settings.json"
VSCODE_EXTENSIONS_FILE="$HOME/.dotfiles/.config/vscode/extensions.txt"

# SSH PATH VARIABLES
export SSH_PATH="$HOME/.ssh"
export SSH_KEYS_PATH="$SSH_PATH/keys"
export SSH_CONFIG_FILE="$SSH_PATH/config"

# CONFIGURATION FILES
export DOTFILES_DIR="$HOME/dotfiles"
export NIX_CONFIG_DIR="$HOME/.nix-config"
export NIX_DARWIN_DIR="$HOME/.nix-darwin"