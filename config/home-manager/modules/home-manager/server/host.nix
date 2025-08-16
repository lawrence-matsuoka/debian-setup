{ config, pkgs, ... }:

{
  # Enable openssh in configuration.nix
  programs = {
    ssh = {
      enable = true;
#      settings = {
#      };
    };
  };
}
