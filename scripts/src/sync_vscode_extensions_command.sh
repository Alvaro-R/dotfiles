#!/bin/bash

if [ ! -f "$VSCODE_EXTENSIONS_FILE" ]; then
  error "Error: File $VSCODE_EXTENSIONS_FILE does not exits."
  exit 1
fi

installed_extensions=$(code --list-extensions)

extensions_to_install=$(cat "$VSCODE_EXTENSIONS_FILE")

section
for extension in $extensions_to_install; do
  if ! echo "$installed_extensions" | grep -q "^$extension$"; then
    info "Installing extension: $extension"
    code --install-extension "$extension"
  fi
done
section

for extension in $installed_extensions; do
  if ! echo "$extensions_to_install" | grep -q "^$extension$"; then
    info "Uninstalling extension: $extension"
    code --uninstall-extension "$extension"
  fi
done
section

success "Synchronization completed successfully!"
