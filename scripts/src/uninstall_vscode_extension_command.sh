#!/bin/bash

# This command uninstalls a VSCode extension and removes it from the extensions.txt file.

extension_id=${args[extension-id]}

# Check if the extension is installed
if ! code --list-extensions 2>/dev/null | grep -q "$extension_id"; then
  warning "Extension '$extension_id' is not installed."
  exit 1
fi

# Uninstall the extension
info "Uninstalling extension '$extension_id'..."
code --uninstall-extension "$extension_id"


# Check if the uninstall was successful
if [ $? -eq 0 ]; then
  success "Extension '$extension_id' successfully uninstalled!"
else
  error "Error uninstalling extension '$extension_id'."
  exit 1
fi

# Remove the extension from extensions.txt
if grep -q "^$extension_id$" "$VSCODE_EXTENSIONS_FILE"; then
  info "Removing '$extension_id' from $VSCODE_EXTENSIONS_FILE..."
  sed -i.bak "/^$extension_id$/d" "$VSCODE_EXTENSIONS_FILE"
  code --list-extensions > "$VSCODE_EXTENSIONS_FILE"
  success "Extension '$extension_id' removed from $VSCODE_EXTENSIONS_FILE."
else
  warning "Extension '$extension_id' was not found in $VSCODE_EXTENSIONS_FILE."
fi
