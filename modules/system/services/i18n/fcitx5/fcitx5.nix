{ pkgs, ... }:
{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [fcitx5-gtk];
      ignoreUserConfig = true;
      settings = {
        inputMethod = {
          GroupOrder."0" = "Default";
          "Groups/0" = {
            Name = "Default";
            DefaultIM = "keyboard-us";
            "Default Layout" = "keyboard-us";
          };
          "Groups/0/Items/0".Name = "keyboard-us";
          "Groups/0/Items/1".Name = "lotus";
        };
      };
    };
  };
}
