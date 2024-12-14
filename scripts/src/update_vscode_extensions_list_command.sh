#!/bin/bash

CURRENT_DATE=$(date +%Y%m%d)

if [ -f "$VSCODE_EXTENSIONS_FILE" ]; then

  warning "¿Are you sure you want to override '$VSCODE_EXTENSIONS_FILE'? (y/n)"
  read -r respuesta

  if [[ "$respuesta" == "y" || "$respuesta" == "Y" ]]; then

    BACKUP_FILE="${VSCODE_EXTENSIONS_FILE}_${CURRENT_DATE}.bakup"
    cp "$VSCODE_EXTENSIONS_FILE" "$BACKUP_FILE"
    echo "Backup file saved at: $BACKUP_FILE"
  else
    info "Operation canceled. File was not overriden."
    exit 0
  fi
else
  info "File '$VSCODE_EXTENSIONS_FILE' does not exists. No need for backup file."
fi

# Mostrar un mensaje indicando que se está actualizando la lista
info "Updating extensions list of VSCode at $VSCODE_EXTENSIONS_FILE..."

# Obtener la lista de extensiones instaladas y guardarlas en el archivo
code --list-extensions > "$VSCODE_EXTENSIONS_FILE"

# Verificar si la operación fue exitosa
if [ $? -eq 0 ]; then
  success "Updated extension list saved at $VSCODE_EXTENSIONS_FILE"
else
  error "There was an error updating extensions list."
  exit 1
fi
