{
  importDir = dir:
  let
    files = builtins.readDir dir;
    names = builtins.attrNames files;
    filtered = builtins.filter
      (name: files.${name} == "regular" && name != "default.nix" &&  builtins.match ".*\\.nix" name != null)
      names;
  in
    map (name: dir + "/${name}") filtered;
}
