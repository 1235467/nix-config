{ config, pkgs, ... }:

{
  imports = [
    ./daily.nix
    ./dev.nix
    ./GUI.nix
    ./nur.nix
    ./nixGL.nix
  ];
}



