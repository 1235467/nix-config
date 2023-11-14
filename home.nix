{ config, pkgs, ... }:
let
  variables = import ./variables;
in
{
  home.username = "${variables.secret.local.arch.username}";
  home.homeDirectory = "/home/${variables.secret.local.arch.username}";
  targets.genericLinux.enable = true;
  home.stateVersion = "23.05";
  programs.home-manager.enable = true;
  #nixpkgs.config.permittedInsecurePackages = [
  #"example-package"
  #];
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnfreePredicate = (pkg: true);
}
