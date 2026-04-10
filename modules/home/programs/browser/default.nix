{ pkgs, username, ... }:
{
  programs.firefox = {
    enable = true;
    nativeMessagingHosts = [pkgs.firefoxpwa];
    betterfox = import ./betterfox.nix {inherit username;};
    profiles.${username} = {
      name = username;
      isDefault = true;
      bookmarks = import ./bookmarks.nix;
      extensions = {
        force = true;
        packages = import ./extensions.nix {inherit pkgs;};
      };
      search = import ./search.nix {inherit pkgs;};
      settings = {};
    };
  };
}
