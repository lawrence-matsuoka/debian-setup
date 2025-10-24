{ config, pkgs, ... }:

{

  programs.git = {
    enable = true;
    settings = {
      user.name = "Lawrence Matsuoka";
      user.email = "Lawrence.Matsuoka@proton.me";
      github.user = "lawrence-matsuoka";
      init.defaultBranch = "main";
    };
  };

}
