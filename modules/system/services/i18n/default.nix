{ importDir, ... }:
{ imports = (importDir ./.) ++ [ ./fcitx5 ]; }
