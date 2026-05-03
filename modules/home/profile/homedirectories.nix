{ ... }:
{
  home.file."Games/Internal".source = config.lib.file.mkOutOfStoreSymlink "/games/Internal";
  home.file."Games/External".source = config.lib.file.mkOutOfStoreSymlink "/games/External";
}