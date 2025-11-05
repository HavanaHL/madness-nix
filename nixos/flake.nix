{
  
 description = "~ λ A simple flakes, huh?";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"; 
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {self, nixpkgs, home-manager, chaotic} @ inputs: {

   nixosConfigurations = {
     "Cheshire" = nixpkgs.lib.nixosSystem {
       specialArgs = {inherit inputs;};
       system = "x86_64-linux";
       modules = [ ./config.nix chaotic.nixosModules.default ];
     };
   }; 

   homeConfigurations = {
     "deive@Cheshire" = home-manager.lib.homeManagerConfiguration {
       pkgs = nixpkgs.legacyPackages."x86_64-linux";
       modules = [ ./home.nix ];
     };
   };
 };
}
