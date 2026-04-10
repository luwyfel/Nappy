{ flakeDir, ... }:
{
  programs.noctalia-shell = {
    enable = true;
    settings = import ./settings {inherit flakeDir;}; 
  };
}
