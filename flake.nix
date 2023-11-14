{
  description = "Home Manager configuration of hakutaku";
  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nur.url = "github:nix-community/nur";
    nur-custom.url = "github:1235467/nurpkgs";
    nixGL.url = "github:guibou/nixGL";
  };

  outputs = { nixpkgs, home-manager, nixGL, nur, nur-custom, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      # Optionally use extraSpecialArgs
      # to pass through arguments to home.nix
      extraSpecialArgs = {
        inherit nixGL nur nur-custom;
      };
      variables = import ./variables;

    in
    {
      homeConfigurations.${variables.secret.local.arch.username} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs extraSpecialArgs;
        modules = [
          ./home.nix
          ./pkgs
          ./config
          ./bin
          ./programs
          ./symlinks
          ./systemd
          #define nixpkgs-stable
          ({ pkgs, ... }: rec {
            # _module.args.nixpkgs-stable = import nixpkgs-stable { inherit system; };
          })
        ];
      };

    };
}
