{ ... }:
{
  environment = {
    pathsToLink = [
      "/share/fcitx5"
      "/share/applications"
      "/share/xdg-desktop-portal"
    ];
    sessionVariables = {
      LIBVA_DRIVER_NAME = "iHD";

      __GL_SHADER_DISK_CACHE = "1";
      __GL_SHADER_DISK_CACHE_SKIP_CLEANUP = "1";
      __GL_SHADER_DISK_CACHE_SIZE = "20480";
      MESA_SHADER_CACHE_MAX_SIZE = "20G";
      PROTON_ENABLE_NVAPI = "1";
      
      NIXOS_OZONE_WL = "1";
      NIXOS_XDG_OPEN_USE_PORTAL = "1";
      GDK_BACKEND = "wayland";

      MOZ_ENABLE_WAYLAND = "1";
      MOZ_USE_XINPUT2 = "1";
    };
    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      BROWSER = "firefox";
    };
  };
}
