{ username, ... }:
{
  users.users.${username} = {
    isNormalUser = true;
    linger = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
      "audio"
      "pipewire"
      "gamemode"
    ];
  };
}
