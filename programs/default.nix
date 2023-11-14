{ config, pkgs, ... }:
let
  variables = import ../variables;
in
{
  home.file = {
    #.local/bin files
    #netflix unlock check
    ".local/bin/nf" = {
      source = ./bin/nf;
      executable = true;
    };
    #reshade-wine
    ".local/bin/reshade" = {
      source = ./bin/reshade-linux;
      executable = true;
    };
    ".local/bin/cinny" = {
      source = ./bin/cinny;
      executable = true;
    };
    #Pluto
    ".local/bin/Pluto" = {
      source = ./bin/Pluto;
      executable = true;
    };
    ".local/bin/kagi" = {
      source = ./bin/kagi;
      executable = true;
    };
    ".local/bin/cuesplit" = {
      source = ./bin/cuesplit;
      executable = true;
    };
  };
}
