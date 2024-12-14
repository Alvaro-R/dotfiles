#!/bin/bash

# Ensure the target directory exists
mkdir -p "$VSCODE_CONFIG_DIR"

# Check if the file already exists
section
info "Checking whether VSCode settings.json alredy exists at $VSCODE_CONFIG_DIR"
if [ -f "$VSCODE_CONFIG_DIR/$VSCODE_CONFIG_FILE" ]; then
  info "Removing existing file $VSCODE_CONFIG_FILE"
  rm "$VSCODE_CONFIG_DIR/$VSCODE_CONFIG_FILE"
fi

# Create symlink, but make sure the file doesn't already exist
info "Creating symlink for $VSCODE_CONFIG_FILE at $VSCODE_CONFIG_DIR"
ln -sf "$DOTFILES_DIR/.config/vscode/$VSCODE_CONFIG_FILE" "$VSCODE_CONFIG_DIR/$VSCODE_CONFIG_FILE"

# Verify if the symlink was successfully created
if [ -L "$VSCODE_CONFIG_DIR/$VSCODE_CONFIG_FILE" ]; then
  success "Symlink succesfully created!"
else
  error "There was a problem creating the symlink..."
fi
section

