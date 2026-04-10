{ ... }:
{
  programs.kitty = {
    enable = true;
    shellIntegration.enableFishIntegration = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 15.0;
    };
    settings = {
      background_opacity = "0.80";
      background_image = "none";
      dynamic_background_opacity = true;
      wayland_titlebar_color = "background";
      window_padding_width = 10;
      window_margin_width = 10;
      cursor_shape = "beam";
      enable_audio_bell = false;
    };
  };
}
