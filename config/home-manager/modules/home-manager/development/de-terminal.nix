{ config, pkgs, ... }:

{
  programs = {
#    alacritty = {
#      enable = true;
#      settings = {
#      };
#    };

    starship = {
      enable = true;
#      enableBashIntegration = true;
    };
  };
}
