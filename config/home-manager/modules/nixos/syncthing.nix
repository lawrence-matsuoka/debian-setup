{ config, pkgs, ... }:

{

  services = {
    syncthing = {
        enable = true;
        user = "lawrence";
        dataDir = "/home/lawrence/Documents";    # Default folder for new synced folders
        configDir = "/home/lawrence/.config/syncthing";   # Folder for Syncthing's settings and keys
    };
  };

}
