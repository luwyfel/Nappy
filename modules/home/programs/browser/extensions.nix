{ pkgs }:
with pkgs.nur.repos.rycee.firefox-addons; [
  ublock-origin
  violentmonkey
  bitwarden
]
