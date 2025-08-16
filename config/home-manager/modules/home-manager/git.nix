{ config, pkgs, ... }:

{

  programs.git = {
    enable = true;
    userName = "Lawrence Matsuoka";
    userEmail = "Lawrence.Matsuoka@proton.me";
    extraConfig = {
      github.user = "lawrence-matsuoka";
      init.defaultBranch = "main";
    };
  };

}
