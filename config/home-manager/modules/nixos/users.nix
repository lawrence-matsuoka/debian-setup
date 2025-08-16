{ config, pkgs, ...}:

{

  # Declare user
  users.users.lawrence = {
    isNormalUser = true;
    home = "/home/lawrence";
    description = "Lawrence Matsuoka";
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "pipewire" "input" ];
#    packages = with pkgs; [
#    ];
  };
}
