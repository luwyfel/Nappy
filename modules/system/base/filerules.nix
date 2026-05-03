{ username, ... }:
{
  systemd.tmpfiles.rules = [
    "d /games/Local 0755 ${username} users -"
    "d /games/External 0755 ${username} users -"
  ];
}
