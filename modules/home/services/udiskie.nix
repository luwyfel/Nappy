{ pkgs, ... }:
{
  services.udiskie = {
    enable = true;
    automount = false;
    notify = true;
    settings = {
      program_options = {
        file_manager = "${pkgs.nemo-with-extensions}/bin/nemo";
      };
    };
  };
}
