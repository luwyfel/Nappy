rec {
  system = "x86_64-linux";
  hostname = "Luwyfel";
  username = "luwy";
  flake = "Nap";
  email = "luwyfelvoid@gmail.com";
  homeDir  = "/home/${username}";
  flakeDir = "${homeDir}/${flake}";
}
