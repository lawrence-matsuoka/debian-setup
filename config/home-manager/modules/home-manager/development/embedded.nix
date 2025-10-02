{ config, pkgs, ... }:

#{

let
  oldPkgs = import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/5aba99242eb2ca90cdc4eea40d61ad9157e5913c.tar.gz"; 
    }) { config = {}; overlays = []; };
in {

  home = {
    packages = with pkgs; [
      # Development environment
      #stm32cubemx
      #arduino
      ## ESP-IDF

      # Tools
      pulseview
      sigrok-cli
      speedcrunch

      # Design
      #freecad
      #oldPkgs.kicad-small
      #orca-slicer
    ];
  };

}
