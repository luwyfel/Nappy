{ pkgs, ... }:
{
  programs = {
    niri = {
      enable = true;
      package = pkgs.niri-unstable;
    };
  };
  systemd.user.services.niri-flake-polkit.enable = false;
}
