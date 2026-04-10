{ pkgs, ... }:
{
  programs.steam = {
    enable = true;
    protontricks.enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    gamescopeSession.enable = true;
    platformOptimizations.enable = true;
    extraCompatPackages = with pkgs; [proton-ge-bin];
    package = pkgs.steam.override {
      extraPkgs = pkgs': with pkgs'; [ bumblebee primus ];
    };
  };
}
