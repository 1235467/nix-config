{ config, pkgs, ... }:
{
  #pkgs in home-manager
  home.packages = [
    #pkgs.cider
    #pkgs.firefox-devedition-bin
    #pkgs.tidal-hifi
    #nixgl required

    #pkgs.evince
    #pkgs.jellyfin-media-player
    #pkgs.jellyfin-mpv-shim
    #pkgs.calyx-vpn
  ];
}


