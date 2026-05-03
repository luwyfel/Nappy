{ config, ... }:
{
  hardware.nvidia = {
    open = true;
    nvidiaSettings = true;
    modesetting.enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.latest;
    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };
      intelBusId = "PCI:0@0:2:0";
      nvidiaBusId = "PCI:1@0:0:0";
    };
    powerManagement = {
      enable = true;
      finegrained = true;
    };
  };
}
