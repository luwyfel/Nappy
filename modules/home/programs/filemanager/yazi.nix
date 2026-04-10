{ ... }:
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    shellWrapperName = "y";
    settings = {
      app.overall.bg = "";
      mgr = {
        show_hidden = true;
        show_symlink = true;
        sort_by = "natural";
        sort_sensitive = false;
        sort_reverse = false;
        sort_dir_first = true;
        linemode = "size";
        scrolloff = 5;
      };
      preview = {
        tab_size = 2;
        max_width = 1000;
        max_height = 1000;
        image_filter = "lanczos3";
        image_quality = 90;
      };
      opener = {
        edit = [{ run = "nvim $@"; block = true; desc = "neovim"; }];
      };
    };
  };
}
