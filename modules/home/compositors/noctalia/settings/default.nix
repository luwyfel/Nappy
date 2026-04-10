{ flakeDir }:
(import ./misc.nix) //
{
  bar = import ./bar;
  general = import ./general.nix {inherit flakeDir;};
  ui = import ./ui.nix;
  location = import ./location.nix;
  calendar = import ./calendar.nix;
  wallpaper = import ./wallpaper.nix {inherit flakeDir;};
  appLauncher = import ./appLauncher.nix;
  controlCenter = import ./controlCenter.nix;
  systemMonitor = import ./systemMonitor.nix;
  dock = import ./dock.nix;
  network = import ./network.nix;
  sessionMenu = import ./sessionMenu.nix;
  notifications = import ./notifications.nix;
  osd = import ./osd.nix;
  audio = import ./audio.nix;
  brightness = import ./brightness.nix;
  colorSchemes = import ./colorSchemes.nix;
  nightLight = import ./nightLight.nix;
  hooks = import ./hooks.nix;
  plugins = import ./plugins.nix;
  idle = import ./idle.nix;
  desktopWidgets = import ./desktopWidgets.nix;
}
