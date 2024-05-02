#!/bin/bash

# Install Docker
wget https://get.docker.com/ -O docker-install.sh
chmod u+x docker-install.sh
./docker-install.sh

# Add user to docker group
sudo usermod -aG docker $USER