{ config, lib, pkgs, ... }:

{
  xsession.enable = true;

  # PATH for graphical session
  home.sessionPath = [
    "$HOME/.nix-profile/bin"
    "$HOME/.local/state/nix/profile/bin"
  ];

  xsession.initExtra = ''
    if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
      . "$HOME/.nix-profile/etc/profile.d/nix.sh"
    fi
  '';

  home = {
    packages = with pkgs; [
      i3 # window manager
      dmenu # menu launcher
      i3status # status bar
      i3lock # screen lock
      dunst # notification daemon
      htop # process viewer
      # brightness
      # audio
      # screenshot
      # webcam
      # background settes
      # nm-applet
      # nmcli
    ];
  };

}
