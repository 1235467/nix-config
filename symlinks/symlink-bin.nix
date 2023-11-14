{ config, pkgs, ... }:
let
  variables = import ../variables;
in
{
  #.config
  home.file = {
    ".local/bin/010editor".source = config.lib.file.mkOutOfStoreSymlink "${variables.path.hexeditor}";
  };
}


