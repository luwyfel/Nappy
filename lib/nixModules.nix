{ inputs, ... }:
[
  inputs.disko.nixosModules.disko
  inputs.niri.nixosModules.niri
  inputs.home-manager.nixosModules.home-manager
  inputs.catppuccin.nixosModules.catppuccin
  inputs.nixlotus.nixosModules.fcitx5-lotus
  inputs.nixgaming.nixosModules.platformOptimizations
]
