{
  catppuccin = {
    enable = true;
    settings = {
      flavor = "mocha";
      transparent_background = true;
      term_colors = true;
      disable_underline = true;
      show_end_of_buffer = true;
      integrations = {
        cmp = true;
        lualine = true;
        nvimtree = true;
        treesitter = true;
        mini.enabled = true;
        native_lsp = {
          enabled = true;
          virtual_text = {
            errors = [ "italic" ];
            hints = [ "italic" ];
            warnings = [ "italic" ];
            information = [ "italic" ];
          };
          underlines = {
            errors = [ "underline" ];
            hints = [ "underline" ];
            warnings = [ "underline" ];
            information = [ "underline" ];
          };
          inlay_hints = {
            background = true;
          };
        };
      };
    };
  };
}
