{ pkgs, ... }:
{
  xdg = {
    mimeApps = {
      enable = true;
      defaultApplications = {
        "inode/directory" = ["nemo.desktop"];
        "application/x-gnome-saved-search" = ["nemo.desktop"];
      };
    };
    desktopEntries = {
      nemo = {
        name = "Nemo";
        icon = ../programs/filemanager/nemo.png;
        comment = "File manager for access and organize files";
        exec = "${pkgs.nemo-with-extensions}/bin/nemo";
      };
    };
  };
}
