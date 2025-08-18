#!/bin/bash

#emacs and doom emacs
#Add all to ~/.local/share/applications with some sort of format for x.desktop applications

set -e  # Exit on error

echo "==> Creating default directories"
xdg-user-dirs-update
echo "==> Successfully created default directories"

echo "==> Adding user to groups"
sudo adduser $USER dialout uucp adm
echo "==> Successfully added users to groups"

echo "==> Updating package lists"
sudo apt update && sudo apt upgrade -y
echo "==> Successfully updated package lists"

# No software-properties-common
echo "==> Installing base packages"
sudo apt install -y git curl wget gnupg lsb-release unzip xorg alacritty thunar
echo "==> Successfully installed base packages"

echo "==> Installing Nix home-manager, please follow on-screen instructions"
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon
echo "==> Successfully installed Nix home-manager"


# Move home-manager files to right place and create symlinks
echo "==> Creating symlink from home-manager config repo into ~/.config/home-manager"
cd ~/.config
sudo ln -sf ~/projects/debian-setup/config/home-manager/ home-manager
cd
echo "==> Successfully created symlink for home-manager"

echo "==> Restarting bash shell to enable Nix commands"
exec bash

echo "==> Setting and updating Nix channels"
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update
echo "==> Successfully set and updated Nix channels"

## Symlink home-manager from this repo into ~/.config/home-manager

echo "==> Installing home-manager"
nix-shell '<home-manager>' -A install
echo "==> Successfully installed home-manager"

echo "==> Build and switch home-manager"
home-manager switch
nix-collect-garbage -d
echo "==> Successfully built and switched home-manager. Collecting garbage..."

# i3
echo "exec i3" > ~/.xinitrc

### GIT
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
# Generate a new SSH key
#### make user input instead
ssh-keygen -t ed25519 -C "Lawrence.Matsuoka@proton.me"

# Start the SSH agent in the background
eval "$(ssh-agent -s)"

# Add the SSH private key to the ssh-agent
ssh-add ~/.ssh/id_ed25519

### SYNCTHING
# install, enable, and start syncthing
sudo apt install syncthing -y
sudo systemctl enable syncthing@$USER
sudo systemctl start syncthing@$USER

### configuration files
cd ~/.config
sudo ln -sf ~/projects/debian-setup/config/i3/ i3
sudo ln -sf ~/projects/debian-setup/config/alacritty/ alacritty
sudo ln -sf ~/projects/debian-setup/config/starship.toml starship.toml
sudo ln -sf ~/projects/debian-setup/config/nvim/ nvim
sudo ln -sf ~/projects/debian-setup/config/gtk-3.0/ gtk-3.0
sudo ln -sf ~/projects/debian-setup/config/gtk-4.0/ gtk-4.0
cd

echo "==> virtual machine stuff"
sudo apt install -y qemu-system libvirt-daemon-system virt-manager
sudo adduser $USER libvirt

echo "==> Creating symlink for .bash_profile"
cd ~/
sudo ln -sf ~/projects/debian-setup/config/.bash_profile .bash_profile
sudo ln -sf ~/projects/debian-setup/config/.bashrc .bashrc
echo "==> Successfully created symlink for .bash_profile"

## Change grub timeout to 1 sec
echo "==> Reducing GRUB timeout to 1 sec"
sudo sed -i -e 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=1/g' /etc/default/grub
sudo update-grub
echo "==> Success"

# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
# Print out the public key 
cat ~/.ssh/id_ed25519.pub
# add more detail to this echo
echo "Select and copy the contents of the id_ed25519.pub file displayed above"

echo "Success. Please reboot after setting Git credentials"



# ask user for their name
echo Hello, what is your name?
read varname
echo It\'s nice to meet you $varname
