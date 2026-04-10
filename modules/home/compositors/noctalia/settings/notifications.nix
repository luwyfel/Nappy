{
  enabled = true;
  enableMarkdown = false;
  density = "default";
  monitors = [];
  location = "top_right";
  overlayLayer = true;
  backgroundOpacity = 1;
  respectExpireTimeout = false;
  lowUrgencyDuration = 1;
  normalUrgencyDuration = 3;
  criticalUrgencyDuration = 5;
  clearDismissed = true;
  saveToHistory = {
    low = true;
    normal = true;
    critical = true;
  };
  sounds = {
    enabled = false;
    volume = 0.5;
    separateSounds = false;
    criticalSoundFile = "";
    normalSoundFile = "";
    lowSoundFile = "";
    excludedApps = "discord,firefox,chrome,chromium,edge";
  };
  enableMediaToast = false;
  enableKeyboardLayoutToast = true;
  enableBatteryToast = true;
}
