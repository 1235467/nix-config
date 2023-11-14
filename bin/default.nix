{ config, pkgs, ... }:

{
  imports = [
    ./ssh-config.nix
    ./vpn-config.nix
    ./alias.nix
    ./scripts.nix
  ];
}



