{ importDir, ... }:
{ imports = (importDir ./.) ++ [ ./filemanager ./gaming ./steam ]; }
