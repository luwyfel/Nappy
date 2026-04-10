{ pkgs, osConfig, ... }:
{
  programs.lutris = {
    enable = true;
    protonPackages = [pkgs.proton-ge-bin];
    winePackages = [pkgs.wineWow64Packages.stable];
    steamPackage = osConfig.programs.steam.package;
    extraPackages = with pkgs; [
      mangohud winetricks gamescope gamemode umu-launcher
    ];
  };
}
