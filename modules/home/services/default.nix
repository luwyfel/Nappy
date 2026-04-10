{ importDir, ... }:
{
  imports = importDir ./.;
  systemd.user.startServices = "sd-switch";
}
