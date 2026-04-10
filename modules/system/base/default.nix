{ importDir, ... }:
{ imports = (importDir ./.) ++ [ ./boot ./drive ./nix ]; }
