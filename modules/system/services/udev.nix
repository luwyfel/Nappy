{ pkgs, ... }:
let
  ADIOS = pkgs.writeTextFile {
    name = "ADIOS-I/O-Scheduler";
    destination = "/lib/udev/rules.d/60-ioschedulers.rules";
    text = ''
      ACTION=="add|change", KERNEL=="sd[a-z]*", ATTR{queue/rotational}=="1", \
      ATTR{queue/scheduler}="bfq"

      ACTION=="add|change", KERNEL=="sd[a-z]*|mmcblk[0-9]*", ATTR{queue/rotational}=="0", \
      ATTR{queue/scheduler}="adios"

      ACTION=="add|change", KERNEL=="nvme[0-9]*", ATTR{queue/rotational}=="0", \
      ATTR{queue/scheduler}="adios"
    '';
  };
in {
  services.udev.packages = [ADIOS];
}
