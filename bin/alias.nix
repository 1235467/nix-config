{ config, pkgs, ... }:
let
  variables = import ../variables;
in
{
  home.file = {
    #alias
    #upgrade packages in home-manager
    ".local/bin/hmus" = {
      text = "nix flake update ${variables.path.home-manager} && home\-manager switch";
      executable = true;
      enable = true;
    };
    ".local/bin/hms" = {
      text = "home\-manager switch";
      executable = true;
      enable = true;
    };
    #warp+ treaks
    ".local/bin/warpc" = {
      text = "warp\-cli connect";
      executable = true;
      enable = true;
    };
    ".local/bin/warpd" = {
      text = "warp\-cli disconnect";
      executable = true;
      enable = true;
    };
    ".local/bin/warps" = {
      text = "warp\-cli status";
      executable = true;
      enable = true;
    };
    #nixbuild cli
    ".local/bin/nixbuild" = {
      text = "ssh eu.nixbuild.net shell";
      executable = true;
      enable = true;
    };
    #qrcode generate
    ".local/bin/qrcode" = {
      text = "qrencode \-t ASCII \-o \/tmp\/qrcode.txt \"\$1\" && cat \/tmp\/qrcode.txt";
      executable = true;
      enable = true;
    };
    #requirements.txt to poetry
    ".local/bin/pip2poetry" = {
      text = "cat requirements.txt | grep \-E \'^[^# ]\' | cut \-d= \-f1 | xargs \-n 1 poetry add";
      executable = true;
      enable = true;
    };
    #forkgram
    ".local/bin/Forkgram" = {
      text = "${variables.path.forkgram}";
      executable = true;
      enable = false;
    };
    ".local/bin/rsync.net" = {
      text = "ssh ${variables.ssh.rsync.username}@${variables.ssh.rsync.ip}";
      executable = true;
      enable = true;
    };
  };
}


