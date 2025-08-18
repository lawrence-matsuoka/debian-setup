# Larry's Good ol' Debian setup

I basically use this on my librebooted Chromebook and it's my favourite workflow even considering the subpar hardware.

## Debian install
Use the netinst iso
Go through the installer and do not up a root password
Only select "standard system utilities" and no other desktop environment (unless you want to)

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
- Nix home-manager

## To-do
Migrate all dotfiles
thunderbird + email accounts 
discord + settings
doom emacs + config
librewolf + extensions + settings
syncthing
other desktop environment stuff
- bluetooth
- wifi
- audio
- screenshots
- brightness
- displays
- menu for sleep/shutdown
- login manager
- hidden file configs (ls -ld .*)

## Prerequisites
sudo apt install git curl -y

Install the [Nix package manager: home-manager](https://nixos.org/download/) multi-user or single-user

Reboot or restart your shell

mkdir ~/projects

cd ~/projects

git clone https://github.com/lawrence-matsuoka/debian-setup.git

cd debian-setup

chmod +x setup.sh

sudo ./setup.sh

## To test:
- Neovim LSPs
- Doom Emacs
- Syncthing
- Compiling a LaTeX file through Nvim

## Post
Run `cat ~/.ssh/id_ed25519.pub` to get your public SSH key and insert that into your preferred Git frontend

