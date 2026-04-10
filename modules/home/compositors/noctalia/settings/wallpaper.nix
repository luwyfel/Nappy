{ flakeDir }:
{
  enabled = true;
  overviewEnabled = false;
  directory = "${flakeDir}/modules/home/theme/assets/wallpapers";
  monitorDirectories = [];
  enableMultiMonitorDirectories = false;
  showHiddenFiles = true;
  viewMode = "single";
  setWallpaperOnAllMonitors = true;
  fillMode = "crop";
  fillColor = "#000000";
  useSolidColor = false;
  solidColor = "#1a1a2e";
  automationEnabled = true;
  wallpaperChangeMode = "random";
  randomIntervalSec = 5400;
  transitionDuration = 1500;
  transitionType = [
    "fade"
    "disc"
    "stripes"
    "wipe"
    "pixelate"
    "honeycomb"
  ];
  skipStartupTransition = false;
  transitionEdgeSmoothness = 0.05;
  panelPosition = "follow_bar";
  hideWallpaperFilenames = false;
  useOriginalImages = true;
  overviewBlur = 0.4;
  overviewTint = 0.6;
  useWallhaven = false;
  wallhavenQuery = "";
  wallhavenSorting = "relevance";
  wallhavenOrder = "desc";
  wallhavenCategories = "111";
  wallhavenPurity = "100";
  wallhavenRatios = "";
  wallhavenApiKey = "";
  wallhavenResolutionMode = "atleast";
  wallhavenResolutionWidth = "";
  wallhavenResolutionHeight = "";
  sortOrder = "name";
  favorites = [];
}
