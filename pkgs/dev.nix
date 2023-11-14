{ config, pkgs, ... }:
{
  #pkgs in home-manager
  home.packages = [
    pkgs.direnv
    pkgs.cachix
    pkgs.niv
    pkgs.amp
    pkgs.goofys
    pkgs.nixpkgs-fmt
    pkgs.arion
  ];
}


