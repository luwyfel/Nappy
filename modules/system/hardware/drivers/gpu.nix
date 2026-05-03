{ pkgs, ... }:
{
  services.xserver.videoDrivers = [ "modesetting" "nvidia" ];
  hardware.graphics.extraPackages = with pkgs; [
    vulkan-loader vulkan-tools vulkan-validation-layers
  ];
}
