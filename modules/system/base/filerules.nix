{ username, ... }:
{
  systemd.tmpfiles.rules = [
    "d /games/Internal 0755 ${username} users -"
    "d /games/External 0755 ${username} users -"
  ];
}
