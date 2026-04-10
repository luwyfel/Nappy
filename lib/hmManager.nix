{ inputs, hostname, username, email, flake, homeDir, flakeDir, importDir, hmModules, ... }:
{
  home-manager = { 
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "hmbak";
    extraSpecialArgs = {inherit inputs hostname username email homeDir flake flakeDir importDir;};
    users.${username}.imports = [
      ../modules/home/compositors
      ../modules/home/profile
      ../modules/home/programs
      ../modules/home/services
      ../modules/home/theme
    ] ++ hmModules;
  };
}
