#!/bin/bash

update=${args[--update]}

# Verificar si el archivo de extensiones existe
if [ ! -f "$VSCODE_EXTENSIONS_FILE" ]; then
  warning "El archivo $VSCODE_EXTENSIONS_FILE no existe."
  exit 1
fi

# Leer el archivo y instalar las extensiones
info "Reading extensions file at $VSCODE_EXTENSIONS_FILE..."
while IFS= read -r extension; do
  # Verificar que la línea no esté vacía y no comience con #
  if [ -n "$extension" ] && [[ ! "$extension" =~ ^# ]]; then
    section

    if [[ -n "$update" ]]; then
      info "Installing extension: $extension"
      code --install-extension "$extension" --force

    else

      info "Installing extension: $extension"
      warning "Probando"
      code --install-extension "$extension"
    fi
    
  fi
done < "$VSCODE_EXTENSIONS_FILE"
section

success "Extesions installation completed successfully!."
