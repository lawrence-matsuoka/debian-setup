{ config, pkgs, ...}:

{

  ## X11
  #services.xserver.displaymanager.sddm.enable = true;
  #services.xserver.enable = true;
  #services.xserver.desktopManager.xfce.enable = true;

  # Enable SDDM Display Manager
#  services.displayManager.sddm.enable = true;
#  services.displayManager.sddm.wayland.enable = true;
  # Enable greetd login manager and automatically logs in
  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        command = "${pkgs.sway}/bin/sway";
        user = "lawrence";
      };
      default_session = initial_session;
    };
  };

  # Enable native wayland support
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Launch sway at login
  environment.loginShellInit = ''
#    [[ "$(tty)" == /dev/tty? ]] && sudo /run/current-system/sw/bin/lock this
    [[ "$(tty)" == /dev/tty1 ]] && sway
  '';

  # Enable gnome-keyring secrets vault
  services.gnome.gnome-keyring.enable = true;

  # enable swaywm
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    extraPackages = with pkgs; [
      swaylock
      swayidle
      wlogout

      wofi

      unzip

      # Screenshot
      grim
      slurp

      # wl-copy and wl-paste for copy/paste
      wl-clipboard

      mako # Notification system developed by swaywm maintainer

      pipewire
      pavucontrol
      wireplumber
      pulseaudio	# for pactl

      networkmanagerapplet

      polkit

      ];
  };

  # Enable screenshare
  xdg.portal.wlr.enable = true;

  programs.waybar = {
    enable = true;
  };

  # Thunar and file explorer
  programs.thunar = {
    enable = true;
    plugins = with pkgs.xfce; [
      thunar-archive-plugin
      thunar-volman
    ];
  };
  programs.xfconf = {
    enable = true;
  };
  services.gvfs.enable = true; # Mount, trash, and other functionalities
  services.tumbler.enable = true; # Thumbnail support for images

  # Enable CUPS to print documents
  services.printing.enable = true;

  security.rtkit.enable = true;
  services.pipewire = {
    audio.enable = true;
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;

    wireplumber.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManagers)
  services.libinput.enable = true;

}
