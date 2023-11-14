{ config, pkgs, ... }:
{
  programs.fish.enable = true;
  imports = [
    ./alias.nix
    ./variables.nix
  ];
}
