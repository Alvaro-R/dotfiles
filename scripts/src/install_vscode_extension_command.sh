#!/bin/bash

extension_id=${args[extension-id]}

section
if code --list-extensions 2>/dev/null | grep -q "$extension_id"; then
    warning "Extension '$extension_id' was already installed!."
    info "Please, run 'dotfiles install-vscode-extensions --force' instead for updating to last version."
else
  info "Installing extension '$extension_id'..."
  code --install-extension "$extension_id"

  if [ $? -eq 0 ]; then
    success "Extension '$extension_id' succesfully installed!."
  else
    error "Error installing '$extension_id'."
    exit 1
  fi

fi

section
if ! grep -q "^$extension_id$" "$VSCODE_EXTENSIONS_FILE"; then
  echo "$extension_id" >> "$VSCODE_EXTENSIONS_FILE"
  echo "Extension '$extension_id' has been added to $VSCODE_EXTENSIONS_FILE."
else
    warning "$extension_id was already in $VSCODE_EXTENSIONS_FILE!"
fi
section
