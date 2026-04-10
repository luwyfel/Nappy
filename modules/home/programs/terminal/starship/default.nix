{ lib, ... }:
{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = (import ./settings.nix {inherit lib;}) // {
      palettes.catppuccin_mocha = import ./palettes.nix;
    };
  };
}
