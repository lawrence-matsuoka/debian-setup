# Larry's Good ol' Debian setup

I basically use this on my librebooted Chromebook and it's my favourite workflow even considering the subpar hardware.

## Debian install
Use the netinst iso
Go through the installer and do not up a root password
Only standard system utilities

DE setup using i3 in home-manager

## Maybes
- STM32CubeIDE + dependencies
- STM32CubeMX
- ESP-IDF
- OrcaSlicer + dependencies
- Code Composer Studio + dependencies
- KiCAD
- FreeCAD

## Prerequisites
- Debian 13
- git


Migrate dotfiles
download librefox and discord
thunderbird + email accounts 

esp-idf https://docs.espressif.com/projects/esp-idf/en/stable/esp32c3/get-started/linux-macos-setup.html


## Prerequisites
sudo apt install git -y
mkdir ~/projects
cd ~/projects
git clone https://github.com/lawrence-matsuoka/debian-setup.git

cd debian-setup
chmod +x setup.sh
sudo ./setup.sh

## misc
Might need to initially comment out dconf in home.nix
