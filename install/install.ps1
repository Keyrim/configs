# Installer Chocolatey s'il n'est pas déjà installé
if ((Get-PackageProvider -ListAvailable | Where-Object Name -eq Chocolatey) -eq $null) {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Liste des packages à installer
$packages = @(
    "vscode",
    "spotify",
    "git",
    "sourcetree",
    "winrar",
    "jdownloader",
    "python3",
    "vlc",
    "googlechrome",
    "autodesk-fusion360",
    "cura-new",
    "choco install directx"
)

# Installation des packages
foreach ($package in $packages) {
    choco install $package -y
}

git config --global user.email "theo.magne.fr@gmail.com"
git config --global user.name "Théo Magne"