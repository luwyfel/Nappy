{
  enable = true;
  settings = {
    sources = [
      { name = "nvim_lsp"; }
      { name = "buffer"; }
      { name = "path"; }
    ];
    mapping = {
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<Tab>" = "cmp.mapping.select_next_item()";
      "<S-Tab>" = "cmp.mapping.select_prev_item()";
    };
  };
}
