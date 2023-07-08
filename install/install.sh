#!/bin/bash

# Mettre à jour la liste des packages
sudo apt update

# Installer les packages
sudo apt install -y build-essential
sudo apt install -y git
sudo apt install -y python3
sudo apt install -y python3-pip
sudo apt install -y cmake

git config --global user.email "theo.magne.fr@gmail.com"
git config --global user.name "Théo Magne"

echo "Tous les packages ont été installés avec succès."
