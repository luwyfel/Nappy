{ pkgs, ... }:
{
  programs.gamemode = {
    enable = true;
    settings = {
      general = {
        renice = 10;
        softrealtime = "auto";
        inhibit_screensaver = 1;
      };
      gpu = {
        apply_gpu_optimisations = "accept-responsibility";
        gpu_device = 1;
        nv_powermizer_mode = 1;
        nv_core_clock_mhz_offset = 100;
        nv_mem_clock_mhz_offset = 200;
      };
      cpu = {
        park_cores = "no";
        pin_cores = "no";
      };
      custom = {
        start = "${pkgs.power-profiles-daemon}/bin/powerprofilesctl set performance";
        end = "${pkgs.power-profiles-daemon}/bin/powerprofilesctl set balanced";
      };
    };
  };
}
