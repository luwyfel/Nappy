{ pkgs }:
{
  force = true;
  default = "ddg";
  privateDefault = "ddg";
  engines = {
    "NixOS Packages" = {
      urls = [{ template = "https://search.nixos.org/packages?query={searchTerms}"; }];
      icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
      definedAliases = [ "@nix" ];
    };
    "MyNixOS" = {
      urls = [{ template = "https://mynixos.com/search?q={searchTerms}"; }];
      icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
      definedAliases = [ "@mynix" ];
    };
    "GitHub" = {
      urls = [{ template = "https://github.com/search?q={searchTerms}&type=repositories"; }];
      definedAliases = [ "@gh" ];
    };
    "youtube" = {
      urls = [{ template = "https://www.youtube.com/results?search_query={searchTerms}"; }];
      definedAliases = [ "@yt" ];
    };
    "ProtonDB" = {
      urls = [{ template = "https://www.protondb.com/search?q={searchTerms}"; }];
      definedAliases = [ "@proton" ];
    };
  };
}
