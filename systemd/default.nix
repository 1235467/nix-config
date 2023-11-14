{ config, pkgs, ... }:
let
  variables = import ../variables;
in
{
  #.config
  systemd.user.services.libinput-three-finger-drag = {
    Unit = {
      Description = "libinput-three-finger-drag";
      Wants = "network-online.target";
      After = "network-online.target";
    };
    Service = {
      ExecStart = "${variables.path.three-finger-drag}";
      #WantedBy="default.target";
    };
  };
  systemd.user.startServices = true;

}


