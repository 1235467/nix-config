{ config, pkgs, ... }:

{
  imports = [
    ./symlink-bin.nix
    ./symlink.nix
  ];
}



