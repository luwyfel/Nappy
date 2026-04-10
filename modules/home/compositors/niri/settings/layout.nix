{ ... }:
let
  mocha = {
    lavender = "#b4befe";
    mauve = "#cba6f7";
    pink = "#f5c2e7";
    blue = "#89b4fa";
    surface0 = "#313244";
    surface1 = "#45475a";
    base = "#1e1e2e";
    mantle = "#181825";
    crust = "#11111b";
  };
in {
  gaps = 10;
  background-color = "transparent";
  center-focused-column = "never";
  preset-column-widths = [
    { proportion = 1. / 3.; }
    { proportion = 1. / 2.; }
    { proportion = 2. / 3.; }
  ];
  focus-ring.enable = false;
  border = {
    enable = true;
    width = 2;
    active.gradient = {
      from = mocha.lavender;
      to = mocha.pink;
      angle = 45;
      relative-to = "workspace-view";
    };
    inactive.gradient = {
      from = mocha.surface1;
      to = mocha.surface0;
      angle = 45;
      relative-to = "workspace-view";
    };
  };
  shadow = {
    enable = true;
    draw-behind-window = true;
    softness = 40;
    spread = 5;
      offset = {
      x = 0;
      y = 5;
    };
    color = "${mocha.crust}cc";
  };
  insert-hint.display.gradient = {
    from = "${mocha.lavender}90";
    to = "${mocha.mauve}30";
    angle = 45;
    relative-to = "workspace-view";
  };
  struts = { };
}
