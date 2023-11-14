{ config, pkgs, ... }:
let
  variables = import ../../variables;
in
{
  #.config
  xdg.configFile = {
    #examples
    #single file under .config
    #"test3.conf".text = "blabla";

    #single file under .config/test
    #"test/test.conf".text="123";

    #folder softlink to .config/nixpkgs/config/xxx
    #"test1".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/test1;
    "balena-etcher-electron".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/balena-etcher-electron";
    "com.xunlei.download".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/com.xunlei.download";
    "gcloud".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/gcloud";
    "matplotlib".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/matplotlib";
    "Motrix".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/Motrix";
    "vlc".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/vlc";
    "easytag".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/easytag";
    "Electron".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/Electron";
    "obs-studio".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/obs-studio";
    "Olympus".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/Olympus";
    "OpenTabletDriver".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/OpenTabletDriver";
    "OpenUtau".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/OpenUtau";
    "osdlyrics".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/osdlyrics";
    "paradox-launcher-v2".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/${variables.path.home-manager-short.config}/paradox-launcher-v2";
  };
}

