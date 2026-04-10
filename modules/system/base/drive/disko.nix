{ ... }:
{
  disko.devices = {
    disk = {
      diskhome = {
        type = "disk";
        device = "/dev/disk/by-id/nvme-INTEL_SSDPEKNU512GZ_PHKA318202DY512A";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
			        priority = 1;
			        name = "ESP";
			        start = "1M";
              end = "1985M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
				        mountOptions = [ "umask=0077" ];
              };
            };
            root = {
              size = "100%";
              content = {
                type = "btrfs";
                extraArgs = [ "-f" ];
				        mountpoint = "/";
                subvolumes = {
                  "@" = {
                    mountpoint = "/";
                    mountOptions = [ "compress=zstd" "noatime" ];
                  };
                  "@nix" = {
                    mountpoint = "/nix";
                    mountOptions = [ "compress=zstd" "noatime" ];
                  };
		  		        "@swap" = {
                    mountpoint = "/.swap";
                    mountOptions = [ "nodatacow" ];
                  };
		  		        "@home" = {
                    mountpoint = "/home";
                    mountOptions = [ "compress=zstd" "noatime" ];
                  };
                  "@games" = {
                    mountpoint = "/games/local";
                    mountOptions = [ "nodatacow" "noatime" ];
                  };
                };
              };
            };
          };
        };
      };
      diskgames = {
        type = "disk";
        device = "/dev/disk/by-id/nvme-ADATA_LEGEND_710_2N332LQ2A6UU";
        content = {
          type = "gpt";
          partitions = {
            games = {
              size = "100%";
              content = {
                type = "btrfs";
                extraArgs = [ "-f" ];
                subvolumes = {
                  "@games" = {
                    mountpoint = "/games/external";
                    mountOptions = [ "nodatacow" "noatime" "nofail" "x-gvfs-show" ];
                  };
                };
              };
            };
          };
        };
      };
    };
  };
}
