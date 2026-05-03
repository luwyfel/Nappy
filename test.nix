{ ... }:

{
  disko.devices = {
    disk = {
      main = {
        type = "disk";
        device = "/dev/sda"; # Change to your target disk (e.g. /dev/nvme0n1)
        content = {
          type = "gpt";
          partitions = {

            ESP = {
              size = "1985M";
              type = "EF00"; # EFI System Partition
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [ "fmask=0077" "dmask=0077" ];
              };
            };

            root = {
              size = "50G";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/";
                mountOptions = [ "defaults" "noatime" ];
              };
            };

            home = {
              size = "160G";
              content = {
                type = "filesystem";
                format = "xfs";
                mountpoint = "/home";
                mountOptions = [ "defaults" "noatime" ];
              };
            };

            game = {
              size = "300G";
              content = {
                type = "filesystem";
                format = "xfs";
                mountpoint = "/game";
                mountOptions = [ "defaults" "noatime" ];
              };
            };

          };
        };
      };
    };
  };
}