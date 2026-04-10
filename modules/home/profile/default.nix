{ importDir, ... }:
{
  imports = importDir ./.;
  programs.home-manager.enable = true;
  home = {
    stateVersion = "25.11";
    sessionVariables = {};
  };
}
