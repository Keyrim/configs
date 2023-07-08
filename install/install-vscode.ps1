# Lire les extensions à partir du fichier
$extensions = Get-Content vscode-extensions.txt

# Installer chaque extension
foreach ($extension in $extensions) {
    code --install-extension $extension
}

Write-Host "Toutes les extensions ont été installées avec succès."
