#!/bin/bash

# Lire les extensions à partir du fichier
extensions=$(cat vscode-extensions.txt)

# Installer chaque extension
for extension in $extensions; do
    code --install-extension $extension
done

echo "Toutes les extensions ont été installées avec succès."
