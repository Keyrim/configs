param(
    [int]$port = 3000  # Définit le port par défaut à 3000 si aucun argument n'est fourni
)

$displayName = "WSL2 Port $port Bridge"  # Construit le nom d'affichage avec le port

# Crée une nouvelle règle de pare-feu en utilisant le nom d'affichage et le port spécifié
New-NetFirewallRule -DisplayName $displayName -Direction Inbound -Action Allow -Protocol TCP -LocalPort $port

# Configure le proxy de port pour écouter sur le port spécifié et se connecter à l'adresse IP de WSL2
netsh interface portproxy set v4tov4 listenport=$port listenaddress=0.0.0.0 connectport=$port connectaddress=$(wsl hostname -I)
