{ importDir, ... }:
{ imports = (importDir ./.) ++ [ ./browser ./editor ./filemanager ./gaming ./media ./social ./terminal ]; }
