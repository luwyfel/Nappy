{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    steam-run 
    vulkan-tools libva-utils
    (heroic.override {
      extraPkgs = pkgs': with pkgs'; [
        gamescope
        gamemode
      ];
    })
  ];
}
