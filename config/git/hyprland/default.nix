{ config, pkgs, ... }:
let
  variables = import ../../../variables;
in
{
  #.config
  xdg.configFile = {
    #hyprpland
    "dunst".source = config.lib.file.mkOutOfStoreSymlink "${variables.path.hyprland}dunst";
    "hypr".source = config.lib.file.mkOutOfStoreSymlink "${variables.path.hyprland}hypr";
    "kitty".source = config.lib.file.mkOutOfStoreSymlink "${variables.path.hyprland}kitty";
    "rofi".source = config.lib.file.mkOutOfStoreSymlink "${variables.path.hyprland}rofi";
  };
}

