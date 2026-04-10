{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''set fish_greeting'';
    plugins = [
      { name = "grc"; src = pkgs.fishPlugins.grc.src; }
      {
        name = "z";
        src = pkgs.fetchFromGitHub {
          owner = "jethrokuan";
          repo = "z";
          rev = "e0e1b9dfdba362f8ab1ae8c1afc7ccf62b89f7eb";
          sha256 = "0dbnir6jbwjpjalz14snzd3cgdysgcs3raznsijd6savad3qhijc";
        };
      }
    ];
    shellAliases = {
      nixswitch = "sudo nixos-rebuild switch --flake . "; 
      nixupdate = "sudo nixos-rebuild switch --upgrade --flake . ";
      flakeupdate = "sudo nix flake update";
      nixclean = "sudo nix-collect-garbage -d";
    };
  };
}
