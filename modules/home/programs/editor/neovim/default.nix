{ ... }:
{
  programs.nixvim = {
    enable = true;
    globals.mapleader = " ";
    colorschemes = import ./colorschemes.nix;
    plugins = import ./plugins;
    keymaps = import ./keymaps.nix;
    opts = import ./opts.nix;
    performance = import ./performance.nix;
  };
}
