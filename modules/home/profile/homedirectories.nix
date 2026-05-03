{ config, ... }:
{
  home.file = {
    "Games/Internal".source = config.lib.file.mkOutOfStoreSymlink "/games/Internal";
    "Games/External".source = config.lib.file.mkOutOfStoreSymlink "/games/External";
  };
}