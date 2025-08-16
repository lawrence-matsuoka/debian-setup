{ config, pkgs, ... }:

{
  # set user, dataDir, and configDir with NixOS
  services = {
    syncthing = {
      enable = true;
#      settings = {
#      };
    };

  };
}
