{ config, pkgs, ... }:
{
  #.config
  xdg.configFile = {
    "xmrig.json".source = ./xmrig/xmrig.json;
    "mpv".source = ./mpv;
  };
}
