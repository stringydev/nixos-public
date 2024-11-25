{

  description = "My system configuration";

  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

    # We use the unstable nixpkgs repo for some packages.
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
       
    ghostty = {
      url = "git+ssh://git@github.com/ghostty-org/ghostty";
      # inputs.nixpkgs-stable.follows = "nixpkgs";
      # inputs.nixpkgs-unstable.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ghostty, ... }@inputs: 
    
    let
      system = "x86_64-linux";
    in {
	
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit system; };
      modules = [
	./nixos/configuration.nix
	{
	  environment.systemPackages = [
	    ghostty.packages.${system}.default
	  ];
        }
      ];
    };
    
    homeConfigurations.stringydev = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [ ./home-manager/home.nix ];
    };
    };
} 
