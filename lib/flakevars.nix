rec {
  system = "x86_64-linux";
  hostname = "Luwyfelvoid";
  username = "luwyfel";
  flake = "nappy";
  email = "luwyfelvoid@gmail.com";
  homeDir  = "/home/${username}";
  flakeDir = "${homeDir}/${flake}";
}
