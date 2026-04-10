{ ... }:
{
  swapDevices = [{
    device = "/.swap/swapfile";
    size = 24 * 1024;
  }];
  zramSwap = {
    enable = true;
    memoryPercent = 25;
  };
}
