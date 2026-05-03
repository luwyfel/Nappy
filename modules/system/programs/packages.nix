{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    xwayland-satellite steam-run vulkan-tools
    (heroic.override {
      extraPkgs = pkgs': with pkgs'; [
        gamescope
        gamemode
      ];
    })
  ];
}
