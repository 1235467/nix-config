{ config, pkgs, ... }:
let
  variables = import ../variables;
in
{
  home.file = {
    #openconnect
    ".local/bin/openconnect-jp1" = {
      text = "echo ${variables.secret.local.arch.password}|sudo \-S ls\necho \"${variables.vpn.kabeneko.password}\" | sudo openconnect ${variables.vpn.kabeneko.jp1.ip} \-\-servercert ${variables.vpn.kabeneko.jp1.cert} \-u ${variables.vpn.kabeneko.username} \-\-passwd\-on\-stdin \-p=${variables.vpn.kabeneko.password} \-\-base\-mtu=${variables.vpn.openconnect.baseMTU} \-\-no\-dtls";
      executable = true;
    };
    ".local/bin/openconnect-hk1" = {
      text = "echo ${variables.secret.local.arch.password}|sudo \-S ls\necho \"${variables.vpn.kabeneko.password}\" | sudo openconnect ${variables.vpn.kabeneko.hk1.ip} \-\-servercert ${variables.vpn.kabeneko.hk1.cert} \-u ${variables.vpn.kabeneko.username} \-\-passwd\-on\-stdin \-p=${variables.vpn.kabeneko.password} \-\-base\-mtu=${variables.vpn.openconnect.baseMTU} \-\-no\-dtls";
      executable = true;
    };
    ".local/bin/openconnect-us1" = {
      text = "echo ${variables.secret.local.arch.password}|sudo \-S ls\necho \"${variables.vpn.kabeneko.password}\" | sudo openconnect ${variables.vpn.kabeneko.us1.ip} \-\-servercert ${variables.vpn.kabeneko.us1.cert} \-u ${variables.vpn.kabeneko.username} \-\-passwd\-on\-stdin \-p=${variables.vpn.kabeneko.password} \-\-base\-mtu=${variables.vpn.openconnect.baseMTU} \-\-no\-dtls";
      executable = true;
    };
    ".local/bin/openconnect-ua1" = {
      text = "echo ${variables.secret.local.arch.password}|sudo \-S openconnect ${variables.vpn.selfhosted.openconnect.ua1.url} \-c ${variables.vpn.selfhosted.openconnect.path.cert} \-k ${variables.vpn.selfhosted.openconnect.path.key} \-\-base\-mtu=${variables.vpn.openconnect.baseMTU}";
      executable = true;
    };
    ".local/bin/dae-run" = {
      text = "echo ${variables.secret.local.arch.password}|sudo \-S dae run \-c ${variables.vpn.dae.config.path}";
      executable = true;
    };
  };
}

