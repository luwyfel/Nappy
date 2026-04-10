{ pkgs, ... }:
let
  presets = pkgs.fetchFromGitHub {
    owner = "JackHack96";
    repo = "EasyEffects-Presets";
    rev = "master";
    sha256 = "sha256-9lSYaWGIQ9K53NwQULmbdDxnS4NijmnOEUvFQWjEF08=";
  };
  presetsFiltered = pkgs.runCommand "presetsFiltering" {} ''
    mkdir -p $out/presets
    mkdir -p $out/irs
    cp ${presets}/*.json $out/presets/
    cp -r ${presets}/irs/* $out/irs/
  '';
in {
  services.easyeffects.enable = true;
  xdg.configFile = {
    "easyeffects/output".source = "${presetsFiltered}/presets";
    "easyeffects/irs".source = "${presetsFiltered}/irs";
  };
}
