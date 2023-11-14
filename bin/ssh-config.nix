{ config, pkgs, ... }:
let
  variables = import ../variables;
in
{
  home.file = {
    #ssh config
    #Router
    ".local/bin/ssh-openwrt" = {
      text = "${variables.kitten} ssh ${variables.ssh.router.username}@${variables.ssh.router.ip}";
      executable = true;
    };
    #Around the world
    ".local/bin/ssh-us1" = {
      text = "${variables.kitten} ssh ${variables.ssh.us1.username}@${variables.ssh.us1.ip}";
      executable = true;
    };
    ".local/bin/ssh-us2" = {
      text = "${variables.kitten} ssh ${variables.ssh.us2.username}@${variables.ssh.us2.ip}";
      executable = true;
      enable = true;
    };
    ".local/bin/ssh-tw1" = {
      text = "${variables.kitten} ssh ${variables.ssh.tw1.username}@${variables.ssh.tw1.ip} \-p ${variables.ssh.tw1.port}";
      executable = true;
      enable = true;
    };
    ".local/bin/ssh-stardust" = {
      text = "${variables.kitten} ssh ${variables.ssh.fr1.username}@${variables.ssh.fr1.ipv6}";
      executable = true;
      enable = true;
    };
    ".local/bin/ssh-us2-ipv6" = {
      text = "${variables.kitten} ssh ${variables.ssh.us2.username}@${variables.ssh.us2.ipv6}";
      executable = true;
      enable = true;
    };
    #BGP
    ".local/bin/ssh-jp1" = {
      text = "ssh ${variables.ssh.jp1.username}@${variables.ssh.jp1.ip}";
      executable = true;
      enable = true;
    };
    ".local/bin/ssh-gb" = {
      text = "${variables.kitten} ssh ${variables.ssh.gb1.username}@${variables.ssh.gb1.ip}";
      executable = true;
      enable = true;
    };
    ".local/bin/ssh-sw1" = {
      text = "${variables.kitten} ssh ${variables.ssh.sw1.username}@${variables.ssh.sw1.ip}";
      executable = true;
      enable = true;
    };
    ".local/bin/ssh-ua" = {
      text = "${variables.kitten} ssh ${variables.ssh.ua1.username}@${variables.ssh.ua1.ipv6}";
      executable = true;
      enable = true;
    };

    #autodl
    ".local/bin/ssh-autodl" = {
      text = "sshpass \-p Ef4YppsA1E ssh \-p 33716 root@region-3.seetacloud.com";
      executable = true;
      enable = false;
    };
    ".local/bin/tensorboard-autodl" = {
      text = "xdg\-open http:\/\/127.0.0.1:8888 && sshpass \-p Ef4YppsA1E ssh \-L 8888:127.0.0.1:6006 \-N \-p 33716 root@region-3.seetacloud.com";
      executable = true;
      enable = false;
    };
    #dn42 burble shell
    ".local/bin/burble-shell" = {
      text = "sshpass \-p \"${variables.ssh.burble-shell.password}\" ssh ${variables.ssh.burble-shell.username}@${variables.ssh.burble-shell.ip.dn42}";
      executable = true;
      enable = false;
    };
  };
}
