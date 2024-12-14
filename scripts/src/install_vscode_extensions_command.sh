#!/bin/bash

# Crear el directorio de configuración de VSCode si no existe
mkdir -p "$VSCODE_CONFIG_DIR"

# Eliminar el archivo de configuración existente si existe
if [ -f "$VSCODE_CONFIG_DIR/$VSCODE_CONFIG_FILE" ]; then
  echo "Eliminando el archivo existente $VSCODE_CONFIG_FILE"
  rm "$VSCODE_CONFIG_DIR/$VSCODE_CONFIG_FILE"
fi

# Crear el symlink
echo "Creando symlink para $VSCODE_CONFIG_FILE en $VSCODE_CONFIG_DIR"
ln -s "$DOTFILES_DIR/vscode/$VSCODE_CONFIG_FILE" "$VSCODE_CONFIG_DIR/$VSCODE_CONFIG_FILE"

# Confirmar el symlink
if [ -L "$VSCODE_CONFIG_DIR/$VSCODE_CONFIG_FILE" ]; then
  echo "Symlink creado exitosamente."
else
  echo "Hubo un problema al crear el symlink."
fi
