{ pkgs, config, ... }:
{
  boot =
  {
    kernelPackages = pkgs.linuxPackages_zen;
    extraModulePackages = with config.boot.kernelPackages; [
      bbswitch
      rtl8821cu
    ];
    blacklistedKernelModules = [
      "nouveau"
      "iwlwifi"
      "rtl8xxxu"
      "rtw88_8821cu"
    ];
  };
}
