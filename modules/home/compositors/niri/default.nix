{ pkgs, config, ... }:
{
  programs.niri = {
    settings = import ./settings {inherit pkgs config;}; 
  };
}
