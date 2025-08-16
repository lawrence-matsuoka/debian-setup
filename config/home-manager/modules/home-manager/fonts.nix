{ pkgs, ... }:

{

  fonts.fontconfig.enable = true;

  # Run `fc-cache -r after changing anything about fonts`
  home.packages = with pkgs; [
    font-awesome
    iosevka
    nerd-fonts.ubuntu-sans
    nerd-fonts.ubuntu-mono
    nerd-fonts.ubuntu
    nerd-fonts.symbols-only
    nerd-fonts.jetbrains-mono
    nerd-fonts.iosevka
    nerd-fonts.iosevka-term-slab
    nerd-fonts.fira-mono
    nerd-fonts.fira-code
    nerd-fonts.adwaita-mono
  ];

}
