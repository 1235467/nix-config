{ config, pkgs, ... }:
let
  variables = import ../../../variables;
in
{
  programs.fish = {
    shellAliases = {
      #color
      ls = "ls \-\-color=auto";
      grep = "grep \-\-color=auto";
      egrep = "egrep \-\-color=auto";
      fgrep = "fgrep \-\-color=auto";
      #ls and other
      ll = "ls \-alF";
      la = "ls \-A";
      l = "ls \-CF";
      #yay
      yay = "paru";
      #fucking s5cmd
      s3du = "s5cmd du \-\-humanize";
      s3cmd = "s5cmd";
      s3cli = "s5cmd";
      s5cli = "s5cmd";
      #goofys
      goofys = "goofys \-\-endpoint ${variables.s3.url}";
      nix-build-remote = "nix\-build \-\-eval\-store auto \-\-store ssh\-ng:\/\/eu.nixbuild.net";
    };
  };
}

