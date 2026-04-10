{ pkgs, config }:
let
  noctalia = cmd: [
    "noctalia-shell" "ipc" "call"
  ] ++ (pkgs.lib.splitString " " cmd);
in with config.lib.niri.actions; {
  #Open Application Launcher#
  "Mod+Space".action.spawn = noctalia "launcher toggle";
  #Function Keybinds#
  #Audio Controls#
  "XF86AudioRaiseVolume" = {
    allow-when-locked = true;
	  action.spawn = noctalia "volume increase";
  };
  "XF86AudioLowerVolume" = {
    allow-when-locked = true;
	  action.spawn = noctalia "volume dscrease";
  };
  "XF86AudioMute" = {
    allow-when-locked = true;
	  action.spawn = noctalia "volume muteOutput";
  };
  "XF86AudioMicMute" = {
    allow-when-locked = true;
	  action.spawn = noctalia "volume muteInput";
  };
  #Brightness Control#
  "XF86MonBrightnessUp" = {
    allow-when-locked = true;
	  action.spawn = noctalia "brightness increase";
  };
  "XF86MonBrightnessDown" = {
    allow-when-locked = true;
  	action.spawn = noctalia "brightness decrease";
  };
  #Open App Keybinds#
  "Mod+Return".action.spawn = "kitty";
  #Niri Keybinds Function#
  "Mod+F".action.toggle-window-floating = {};
  "Mod+Shift+F".action.fullscreen-window = {};
  "Mod+Ctrl+F".action.switch-focus-between-floating-and-tiling = {};
  "Mod+Q".action.close-window = {};
  "Mod+Shift+Q".action.quit.skip-confirmation = true;
  #Niri Screenshot Tool#
  "Print".action.screenshot = {};
  "Ctrl+Print".action.screenshot-screen = {};
  "Alt+Print".action.screenshot-window = {};
  #Niri Workspaces Related#
  "Mod+Left".action.focus-column-left = {};
  "Mod+Down".action.focus-window-down = {};
  "Mod+Up".action.focus-window-up = {};
  "Mod+Right".action.focus-column-right = {};
  "Mod+Ctrl+Left".action.move-column-left = {};
  "Mod+Ctrl+Down".action.move-window-down = {};
  "Mod+Ctrl+Up".action.move-window-up = {};
  "Mod+Ctrl+Right".action.move-column-right = {};
  "Mod+Home".action.focus-column-first = {};
  "Mod+End".action.focus-column-last = {};
  "Mod+Ctrl+Home".action.move-column-to-first = {};
  "Mod+Ctrl+End".action.move-column-to-last = {};
  "Mod+Page_Down".action.focus-workspace-down = {};
  "Mod+Page_Up".action.focus-workspace-up = {};
  "Mod+Ctrl+Page_Down".action.move-column-to-workspace-down = {};
  "Mod+Ctrl+Page_Up".action.move-column-to-workspace-up = {};
  "Mod+Shift+Page_Down".action.move-workspace-down = {};
  "Mod+Shift+Page_Up".action.move-workspace-up = {};
  "Mod+WheelScrollDown" = {
    cooldown-ms = 150;
	  action.focus-workspace-down = {};
  };
  "Mod+WheelScrollUp" = {
    cooldown-ms = 150;
	  action.focus-workspace-up = {};
  };
  "Mod+Ctrl+WheelScrollDown" = {
    cooldown-ms = 150;
	  action.move-column-to-workspace-down = {};
  };
  "Mod+Ctrl+WheelScrollUp" = {
    cooldown-ms = 150;
	  action.move-column-to-workspace-up = {};
  };
  "Mod+1".action.focus-workspace = 1;
  "Mod+2".action.focus-workspace = 2;
  "Mod+3".action.focus-workspace = 3;
  "Mod+4".action.focus-workspace = 4;
  "Mod+5".action.focus-workspace = 5;
  "Mod+Ctrl+1".action.move-column-to-workspace = 1;
  "Mod+Ctrl+2".action.move-column-to-workspace = 2;
  "Mod+Ctrl+3".action.move-column-to-workspace = 3;
  "Mod+Ctrl+4".action.move-column-to-workspace = 4;
  "Mod+Ctrl+5".action.move-column-to-workspace = 5;
}
