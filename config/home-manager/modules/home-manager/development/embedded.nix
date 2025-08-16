{ pkgs, ... }:

{

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
      #kicad
      #orca-slicer
    ];
  };

}
