{ inputs, username, hostname, email, system, flake, drives, homeDir, flakeDir, importDir, nixModules, hmModules }:
extraModules:
  inputs.nixpkgs.lib.nixosSystem {
    inherit system;
    specialArgs = {inherit inputs hostname username email drives homeDir flake flakeDir importDir;};
    modules = [
      ../overlay
      ../device
      ../modules/system/base
      ../modules/system/display
      ../modules/system/hardware
      ../modules/system/programs
      ../modules/system/security
      ../modules/system/services
      (import ./hmManager.nix {inherit inputs hostname username email drives homeDir flake flakeDir importDir hmModules;})
    ] ++ nixModules ++ extraModules;
  }
