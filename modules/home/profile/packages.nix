{ pkgs, ... }:
{
  home.packages = with pkgs; [
    adw-gtk3 tela-icon-theme
    grc wl-clipboard
    nemo-with-extensions unzip unrar xarchiver
    gimp2-with-plugins libreoffice bluefish
    r2modman
    protonplus protonup-qt
    protontricks winetricks wineWow64Packages.stable zenity
    pavucontrol pear-desktop
  ];
}
