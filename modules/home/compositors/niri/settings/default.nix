{ pkgs, config }:
(import ./misc.nix) //
{
  input = import ./input.nix;
  outputs = import ./outputs.nix;
  layout = import ./layout.nix {};
  animations = import ./animations.nix;
  binds = import ./keybinds.nix {inherit pkgs config;};
  layer-rules = import ./layerrules.nix;
  window-rules = import ./windowrules.nix;
  environment = import ./environment.nix;
  spawn-at-startup = import ./spawnstartup.nix;
}
