{pkgs, ... }:

{

  home = {
    packages = with pkgs; [
      # LibreOffice and spellcheck
      libreoffice
      hunspell
      hunspellDicts.en_CA

       #librewolf
       #thunderbird

      xournalpp
    ];
  };
}
