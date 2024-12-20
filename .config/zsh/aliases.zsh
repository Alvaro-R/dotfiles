
# Dotfiles command aliases
alias dotfiles='dotfiles'  # Esto asegura que 'dotfiles' se ejecute de manera global
alias link-dotfiles='dotfiles stow-dotfiles'
alias symlink-vscode='dotfiles symlink-vscode'
alias install-vscode-extensions='dotfiles install-vscode-extensions'
alias install-vscode-extension='dotfiles install-vscode-extension'
alias update-vscode-extensions-list='dotfiles update-vscode-extensions-list'
alias sync-vscode-extensions='dotfiles sync-vscode-extensions'
alias install-dotfiles='cd ~/.dotfiles/scripts && install_dotfiles.sh && cd'
alias vscode-extensions='code --list-extensions'
alias rebuild='darwin-rebuild switch --flake ~/.config/nix/nix-darwin'