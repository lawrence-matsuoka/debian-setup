{ config, pkgs, ... }:

{
  # Enable openssh in configuration.nix
  programs = {
    ssh = {
      enable = true;
      enableDefaultConfig = false;
      matchBlocks = {
        "*" = {
          forwardAgent = false;
          forwardX11 = false;
          #serverAliveInterval = 0;
        };
      };
#      settings = {
#      };
    };
  };
}
