{ config, pkgs, ... }:

{
  
  imports = 
  [

    ./modules/home-manager/development/de-terminal.nix  # Alacritty and Starship
    ./modules/home-manager/development/editors.nix  # Emacs, Neovim, and Vim
    ./modules/home-manager/desktop-environment/i3.nix # Desktop environment
#    ./modules/home-manager/development/languages.nix  # Go
#    ./modules/home-manager/development/embedded.nix
#    ./modules/home-manager/development/gadgets.nix
#    ./modules/home-manager/development/vscodium.nix

    ./modules/home-manager/fonts.nix
    ./modules/home-manager/git.nix
#    ./modules/home-manager/productivity/office.nix
#    ./modules/home-manager/server/general.nix
#    ./modules/home-manager/server/host.nix
#    ./modules/home-manager/social.nix

  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  dconf = {
    enable = true;
#    settings = {
#    "org/virt-manager/virt-manager/connections" = {
#      autoconnect = ["qemu:///system"];
#      uris = ["qemu:///system"];
#      };
#    };
  };

  targets.genericLinux.enable = true;
  programs.home-manager.enable = true;

  home = {
    username = "lawrence";
    homeDirectory = "/home/lawrence";

    # This value determines the Home Manager release that your configuration is
    # compatible with. This helps avoid breakage when a new Home Manager release
    # introduces backwards incompatible changes.
    # You should NOT change this value, even if you update Home Manager. If you do
    # want to update the value, then make sure to first check the Home Manager
    # release notes.
    stateVersion = "24.05"; # Please read the comment before changing.
  };
}
