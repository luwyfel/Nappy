{ importDir, ... }:
{ imports = (importDir ./.) ++ [ ./niri ./noctalia ]; }
