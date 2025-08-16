{pkgs, ... }:

{

  home = {
    packages = with pkgs; [
      discord
#      steam
#      vlc
    ];
  };

}
