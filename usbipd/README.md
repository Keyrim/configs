# Provide some script and commands to use use window's usb port from WSL2

## Prerequisites

- WSL2 with a kernel version >= 5.10.60.1 (***uname -r*** to get the kernel version)
- Windows build 22000 or later (***winver*** in cmd to get the windows build version)

## Usefull links

- [Usbipd wsl support documentation](https://github.com/dorssel/usbipd-win/wiki/WSL-support)
- [USBIPD windows download](https://github.com/dorssel/usbipd-win/releases)
- [Microsoft's documentation](https://learn.microsoft.com/en-us/windows/wsl/connect-usb)

## Install usbip(d) for WSL2

### Windows
Download the [latest release](https://github.com/dorssel/usbipd-win/releases), install it and restart your computer.

### Linux
Run the script "install-usbip.sh"
```bash
./install-usbip.sh
```