{ ... }:
{
  networking = {
    networkmanager = {
      enable = true;
      dns = "default";
      wifi.powersave = false;
      connectionConfig = {
        "ipv4.ignore-auto-dns" = "yes";
        "ipv6.ignore-auto-dns" = "yes";
      };
      insertNameservers = [
        "1.1.1.1"
        "1.0.0.1"
        "8.8.8.8"
        "8.8.4.4"
      ];
    };
  };
}
