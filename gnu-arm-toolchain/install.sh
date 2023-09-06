#!/bin/bash

# Install the GNU ARM Toolchain

# Update
sudo apt update
sudo apt upgrade -y

# The toolchain 10.3 is available on my google drive, so we'll use gdown to download it
pip install gdown

# Download the GNU ARM Toolchain
cd ~
mkdir gnu-arm-toolchain
cd gnu-arm-toolchain
gdown https://drive.google.com/uc?id=1VRBE3VhYSkAhIQSf7EljlhWDWhRmc5U5

# Extract the GNU ARM Toolchain
tar -xvf gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2

# Move the GNU ARM Toolchain to /opt
sudo mv gcc-arm-none-eabi-10.3-2021.10 /opt

# Add the GNU ARM Toolchain to the PATH
echo 'export PATH="/opt/gcc-arm-none-eabi-10.3-2021.10/bin:$PATH"' >> ~/.bashrc

# Check the version of the GNU ARM Toolchain
echo "reload the ~/.bashrc file with the command 'source ~/.bashrc'"
echo "check the version of the GNU ARM Toolchain with the command 'arm-none-eabi-gcc --version'"


