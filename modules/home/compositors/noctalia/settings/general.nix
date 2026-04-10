{ flakeDir }:
{
  avatarImage = "${flakeDir}/modules/home/theme/assets/avatars/avatar1.png";
  dimmerOpacity = 0.2;
  showScreenCorners = false;
  forceBlackScreenCorners = false;
  scaleRatio = 1;
  radiusRatio = 0.2;
  iRadiusRatio = 0.5;
  boxRadiusRatio = 1;
  screenRadiusRatio = 1;
  animationSpeed = 1;
  animationDisabled = false;
  compactLockScreen = false;
  lockScreenAnimations = true;
  lockOnSuspend = true;
  showSessionButtonsOnLockScreen = true;
  showHibernateOnLockScreen = false;
  enableLockScreenMediaControls = true;
  enableShadows = true;
  enableBlurBehind = true;
  shadowDirection = "bottom_right";
  shadowOffsetX = 2;
  shadowOffsetY = 3;
  language = "";
  allowPanelsOnScreenWithoutBar = true;
  showChangelogOnStartup = false;
  telemetryEnabled = false;
  enableLockScreenCountdown = true;
  lockScreenCountdownDuration = 10000;
  autoStartAuth = false;
  allowPasswordWithFprintd = false;
  clockStyle = "digital";
  clockFormat = "hh
mm";
  passwordChars = true;
  lockScreenMonitors = [];
  lockScreenBlur = 0;
  lockScreenTint = 0;
  keybinds = {
    keyUp = ["Up"];
    keyDown = ["Down"];
    keyLeft = ["Left"];
    keyRight = ["Right"];
    keyEnter = ["Return" "Enter"];
    keyEscape = ["Esc"];
    keyRemove = ["Del"];
  };
  reverseScroll = false;
  smoothScrollEnabled = true;
}
