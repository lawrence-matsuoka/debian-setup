{ config, pkgs, ... }:

{

  programs = {

    vim = {
      enable = true;
    };

    neovim = {
      enable = true;
      defaultEditor = true;

      plugins = with pkgs.vimPlugins; [
        #coc-clangd
        #clangd_extensions-nvim

        # Treesitter
        nvim-treesitter.withAllGrammars
      ];

      extraPackages = with pkgs; [
        # LSP
        asm-lsp
        libclang
        lua-language-server
        nil
        basedpyright
        texlab

        # Treesitter
        tree-sitter

        # Tools
        ripgrep
        fd
        zathura
        nodePackages.nodejs
        luajitPackages.jsregexp
        coreutils
        luarocks # maybe not needed? does nothing?

        # C tools
        gcc
        clang
        clangStdenv

        # Go tools
        delve

        # LaTeX
        texliveFull
        xdotool
        pstree

        # Null-ls
        stylua
        #black
        #isort
      ];
    };

    emacs = {
      enable = true;
      package = pkgs.emacs;
  #    extraConfig = ''
  #    '';
    };
  };
}
