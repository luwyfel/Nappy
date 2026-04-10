{ username, ... }:
{
  services.fcitx5-lotus = {
    enable = true;
    user = "${username}";
  };
}
