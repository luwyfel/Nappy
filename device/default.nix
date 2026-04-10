{ importDir, hostname, ... }:
{
  imports = importDir ./.;
  system.stateVersion = "25.11";
  networking.hostName = hostname;
}
