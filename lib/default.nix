{ inputs }:
let
  flakevars = import ./flakevars.nix;
  mkHelpers = import ./mkHelpers.nix;
  nixModules = import ./nixModules.nix {inherit inputs;};
  hmModules = import ./hmModules.nix {inherit inputs;};
in {
  inherit (flakevars) system hostname username email drives homeDir flake flakeDir;
  inherit (mkHelpers) importDir;
  inherit nixModules hmModules;
  mkSystem = import ./mkSystem.nix {
    inherit inputs nixModules hmModules;
    inherit (flakevars) system hostname username email drives homeDir flake flakeDir;
    inherit (mkHelpers) importDir;
  };
}
