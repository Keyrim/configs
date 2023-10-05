#!/bin/bash

# Mettre à jour la liste des packages
sudo apt update

# Installer les packages
sudo apt install linux-tools-virtual hwdata
sudo update-alternatives --install /usr/local/bin/usbip usbip `ls /usr/lib/linux-tools/*/usbip | tail -n1` 20
sudo apt install usbip -y