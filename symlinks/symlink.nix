{ config, pkgs, ... }:
let
  variables = import ../variables;
in
{
  home.file = {
    #julia config
    ".julia".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.julia.config}";
    #openwrt docu
    "docu-openwrt".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.openwrt.docu}";
    #AVD folder
    ".android/avd".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.avd.data}";
    #cargp
    ".cargo".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.cargo.cache}";
    ".gradle".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.gradle.cache}";
    ".stack".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.stack.cache}";
    "文档".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.documents}";
    "下载".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.downloads}";
    "Downloads".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.downloads}";
    "音乐".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.music}";
    ".local/bin/matlab".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.matlab.bin}";
    ".local/share/Steam/steamapps/compatdata".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.steam.compatdata}";
    ".cache/pypoetry".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.poetry.cache}";
    ".cache/borg".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.borg.cache}";
    ".cache/paru".source = config.lib.file.mkOutOfStoreSymlink "${variables.Symlinks.paru.cache}";
  };
}

#examples
#single file under .config
#"test3.conf".text = "blabla";
#single file under .config/tes
#"test/test.conf".text="123";
#folder softlink to .config/nixpkgs/config/xxx
#"test1".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/home-manager/config/test1;

