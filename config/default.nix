{ config, pkgs, ... }:

{
  imports = [
    ./nix
    ./git
    ./readonly
    #./writable
  ];
}



