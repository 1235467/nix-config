{ config, pkgs, nixGL, ... }:
let
  nixgl = import nixGL { inherit pkgs; };
in
{
  #pkgs in home-manager
  home.packages = [
    nixgl.nixGLIntel
  ];
}
