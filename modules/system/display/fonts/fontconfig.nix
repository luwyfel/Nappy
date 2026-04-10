{ ... }:
{
  fonts = {
    enableDefaultPackages = true;
    fontDir.enable = true;
    fontconfig = {
      enable = true;
      antialias = true;
      includeUserConf = true;
    };
  };
}
