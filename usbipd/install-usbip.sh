#!/bin/bash

# Mettre à jour la liste des packages
sudo apt update


# Installer les packages
sudo apt update
sudo apt install usbip -y

# Add an alias to window's usbipd.exe
echo "alias usbipd-win=usbipd.exe" >> ~/.bashrc