{ ... }:
{
  boot = {
    consoleLogLevel = 0;
    initrd = {
      verbose = true;
      supportedFilesystems = ["btrfs"];
    };
    tmp.cleanOnBoot = true;
    kernel.sysctl = {
      "kernel.nmi_watchdog" = 0;
    };
    kernelParams = [
      "quiet"
      "intel_pstate=active"
      "loglevel=3"
      "udev.log_priority=3"
      "rd.udev.log_level=3"
      "rd.systemd.show_status=auto"
      "nvidia-drm.modeset=1"
      "mitigations=off"
    ];
    blacklistedKernelModules = [
      "iTCO_wdt"
      "iTCO_vendor_support"
    ];
    extraModprobeConfig = ''
      options snd_hda_intel power_save=0
      options snd_hda_intel position_fix=1
    '';
  };
}
