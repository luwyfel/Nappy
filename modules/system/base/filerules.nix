{ username, ... }:
{
  systemd.tmpfiles.rules = [
    "d /games/local 0755 ${username} users -"
    "d /games/external 0755 ${username} users -"
  ];
}
