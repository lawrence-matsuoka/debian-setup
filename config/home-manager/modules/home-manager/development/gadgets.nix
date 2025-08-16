{pkgs, ... }:

{

  home = {
    packages = with pkgs; [
#      rpi-imager
      vial
      scrcpy
    ];
  };

}
