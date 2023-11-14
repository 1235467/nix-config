{ config, pkgs, nixGL, ... }:
{
  #pkgs in home-manager
  home.packages = [
    #pkgs.python2
    #pkgs.xmrig
    pkgs.jq
    pkgs.tintin
    pkgs.tcptrack
    pkgs.awscli2
    pkgs.libgourou
    pkgs.tcping-go
    pkgs.matrix-synapse-tools.synadm
    #pkgs.unrar
    #pkgs.compsize
    #pkgs.dsvpn
    #pkgs.scrcpy
    #pkgs.ncspot
    #pkgs.yt-dlp
    #nixpkgs-stable.hello
  ];
}

