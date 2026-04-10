{ pkgs, inputs, ... }:
let
  spicePkgs = inputs.spicetify.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in {
  programs.spicetify = {
    enable = true;
    enabledExtensions = with spicePkgs.extensions; [
      adblockify
      hidePodcasts
      shuffle
      ytVideo
      autoVolume
      simpleBeautifulLyrics
    ];
    theme = spicePkgs.themes.catppuccin;
    colorScheme = "mocha";
  };
}
