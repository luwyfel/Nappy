{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    btrfs-progs xwayland-satellite steam-run vulkan-tools
    (heroic.override {
      extraPkgs = pkgs': with pkgs'; [
        gamescope
        gamemode
      ];
    })
  ];
}
