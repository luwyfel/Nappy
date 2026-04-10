{ ... }:
{
  boot = {
    loader = {
      timeout = 1;
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      limine = {
        enable = true;
        efiSupport = true;
      };
    };
  };
}
