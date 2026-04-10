{ pkgs, ... }:
{
  gtk = {
    enable = true;
    gtk3.extraConfig.gtk-application-prefer-dark-theme = 1;
    gtk4 = {
      theme = null;
      extraConfig.gtk-application-prefer-dark-theme = 1;
    };
    iconTheme = {
      name = "Tela-dark";
      package = pkgs.tela-icon-theme;
    };
  };
}
