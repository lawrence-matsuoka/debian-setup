# linux-env

An automated way to setup my configurations on Debian and Rocky Linux using Preseed, Kickstart, Bash, Ansible, and Nix.

## Quick todo
backup files and syncthing to truenas

Table here:
System provision: preseed / kickstart -> base os, partitioning, network, base packages
System configuration: ansible -> system-level configuration like packages, users, ssh, services, files, firewall, updates
User environment: home-manager -> user-level reproducible environments like CLI tools, dotfiles, shells, neovim, some packages
Bash: to automate other configs and symlinks between projects/linux-env/config/ repo and ~/.config

Kickstart / Preseed to replace the GUI install
Bash for initial package population dependencies
User services with home-manager / nix
System services with Ansible and bash
Additionally a script to setup a dev container for work env, should use docker for debian, podman for rocky, java env, vscodium with groovylint, sonarlint, gradlels, intellicode, language support for java(tm) by redhat linux
Rocky linux setup should also be configured with gnome, then figure out how to get tiling wm on gnome without additional extensions or plugins
Create a barebones vim setup
Setup some CI/CD or some sort of automation to rebuild the iso when changes are pushed to the git repo (can probably be done within GitLab)

Scripts should detect or have some sort of flag for which package manager to use: i.e apt for Debian and dnf/yum for Rocky

## Debian install
Use the netinst iso
Go through the installer and do not up a root password
Only select "standard system utilities" and no other desktop environment (unless you want to)

## Maybes
- STM32CubeIDE + dependencies
- STM32CubeMX
- ESP-IDF
- Code Composer Studio + dependencies

## Prerequisites
- Debian 13
- Git
- [Nix package manager: home-manager](https://nixos.org/download/) (either multi-user or single-user)


## To-do
Migrate all dotfiles
discord + settings
doom emacs + config
librewolf + extensions + settings
syncthing
OrcaSlicer + dependencies
FreeCAD
other desktop environment stuff
- bluetooth
- wifi
- audio
- screenshots
- brightness
- displays
- menu for sleep/shutdown
- hidden file configs (ls -ld .*)

## Prerequisites
sudo apt install git curl -y

Install home-manager

Restart your shell or reboot

mkdir ~/projects

cd ~/projects

git clone https://github.com/lawrence-matsuoka/debian-setup.git

cd debian-setup

chmod +x setup.sh

./setup.sh

## To test:
- Neovim LSPs
- Doom Emacs
- Syncthing
- Compiling a LaTeX file through Nvim

## Post
Run `cat ~/.ssh/id_ed25519.pub` to get your public SSH key and insert that into your preferred Git frontend

