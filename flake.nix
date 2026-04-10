{
  inputs = {
    nixpkgs.url = "github:nixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri.url = "github:sodiboo/niri-flake";
    
    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixgaming.url = "github:fufexan/nix-gaming";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixlotus = {
      url = "github:LotusInputMethod/fcitx5-lotus";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin.url = "github:catppuccin/nix";

    vencord.url = "github:FlameFlag/nixcord";
  
    betterfox.url = "github:HeitorAugustoLN/betterfox-nix";
    nur.url = "github:nix-community/NUR";

    spicetify.url = "github:Gerg-L/spicetify-nix";
};
    
  outputs = inputs@{ ... }:
  let
    lib = import ./lib {inherit inputs;};
  in {
    nixosConfigurations.${lib.hostname} = lib.mkSystem [];
  };
}
