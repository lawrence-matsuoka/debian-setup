{ config, pkgs, ... }:

{

  # Add user to libvirtd group
  users.users.lawrence.extraGroups = [ "libvirtd" ];

  # Enable virt-manager
  programs.virt-manager = {
    enable = true;
  };

  # Manage the virtualization services
  virtualisation = {
    libvirtd = {
      enable = true;
    };
  };

}
