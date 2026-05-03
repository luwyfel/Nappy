{ ... }:
{
  disko.devices = {
    disk = {
      maindrive = {
        type = "disk";
        device = "/dev/disk/by-id/nvme-INTEL_SSDPEKNU512GZ_PHKA318202DY512A";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
			  priority = 1;
			  name = "ESP";
              size = "1985M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
				mountOptions = [ "fmask=0077" "dmask=0077"];
              };
            };
			root = {
              size = "78786M";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/";
                mountOptions = [ "defaults" "noatime" ];
              };
            };
            home = {
              size = "102400M";
              content = {
                type = "filesystem";
                format = "xfs";
				extraArgs = [ "-f" ];
                mountpoint = "/home";
                mountOptions = [ "defaults" "noatime" ];
              };
            };
            inside = {
              size = "100%";
              content = {
                type = "filesystem";
                format = "xfs";
				extraArgs = [ "-f" ];
                mountpoint = "/games/Internal";
                mountOptions = [ "defaults" "noatime" "nofail" ];
              };
            };
          };
        };
      };
      gamesdrive = {
        type = "disk";
        device = "/dev/disk/by-id/nvme-ADATA_LEGEND_710_2N332LQ2A6UU";
        content = {
          type = "gpt";
          partitions = {
            outside = {
              size = "100%";
              content = {
                type = "filesystem";
                format = "xfs";
                extraArgs = [ "-f" ];
                mountpoint = "/games/External";
                mountOptions = [ "defaults" "noatime" "nofail" ];
              };
            };
          };
        };
      };
    };
  };
}
