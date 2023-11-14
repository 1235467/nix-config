{ config, pkgs, nur, nur-custom, ... }:
let
  nurpkgs = import nur { inherit pkgs; };
  nurpkgs-custom = import nur-custom { inherit pkgs; };
in
{
  home.packages = [
    #NUR
    #nurpkgs.repos.linyinfeng.wemeet
    nurpkgs-custom.ab-av1
    #nurpkgs-custom.av1an
    nurpkgs-custom.Anime4k-rs
    #nurpkgs-custom.onedrive-fuse
    nurpkgs-custom.jjwxcCrawler
    nurpkgs-custom.DownOnSpot
    nurpkgs-custom.reflac
    nurpkgs-custom.idntag
    nurpkgs-custom.ncmdump-rs
    #nurpkgs.repos.xddxdd.bilibili
  ];
}



