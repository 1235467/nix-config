{ config, pkgs, ... }:
let
  variables = import ../variables;
in
{
  #in the form of texts
  home.file = {
    #AD DXP
    ".local/bin/ad" = {
      text = "WINEPREFIX\=${variables.path.wineprefix.wine32} wine ${variables.path.ad}";
      executable = true;
      enable = false;
    };
    ".local/bin/avd" = {
      text = "${variables.path.AVD} @Nexus\_4\_API\_30";
      executable = true;
      enable = true;
    };
    #rclone mount aliyun
    ".local/bin/mount_aliyun" = {
      text = "rclone mount aliyun\: ${variables.path.aliyun.destination} \-\-allow-other \-\-allow-non-empty \-\-vfs-cache-mode writes \&";
      executable = true;
      enable = false;
    };
    #streaming test
    ".local/bin/verify" = {
      text = "bash <(curl \-L \-s check.unlock.media)";
      executable = true;
    };
    #clear log
    ".local/bin/log_clear" = {
      text = "journalctl \-\-vacuum\-size\=10M";
      executable = true;
    };

    #fix warp dns
    ".local/bin/dns" = {
      text = "echo ${variables.secret.local.arch.password} | sudo \-S ls\nsudo sed '2 i nameserver 127.0.0.1' \/etc\/resolv.conf";
      executable = true;
    };
    #get config from avd
    ".local/bin/avd_pull" = {
      text = "adb shell \"su 0 cp \-r ${variables.vpn.trendmicro.path.android} ${variables.vpn.trendmicro.path.android_tmp}\nadb pull ${variables.vpn.trendmicro.path.android_tmp_file} ${variables.vpn.trendmicro.path.local_tmp}\nrm -rf ${variables.vpn.trendmicro.path.local}\nmv ${variables.vpn.trendmicro.path.local_tmp_file} ${variables.vpn.trendmicro.path.local}\nadb kill\-server";
      executable = true;
    };
    ".local/bin/trendmicro" = {
      text = "adb shell \"su 0 cp \-r ${variables.vpn.trendmicro.path.android} ${variables.vpn.trendmicro.path.android_tmp}\nadb pull ${variables.vpn.trendmicro.path.android_tmp_file} ${variables.vpn.trendmicro.path.local_tmp}\nrm -rf ${variables.vpn.trendmicro.path.local}\nmv ${variables.vpn.trendmicro.path.local_tmp_file} ${variables.vpn.trendmicro.path.local}\nadb kill\-server\necho '${variables.secret.local.arch.password}' | sudo \-S ls\nwg\-quick up ${variables.vpn.trendmicro.path.local}";
      executable = true;
    };
    #fix audio in adb
    ".local/bin/adb-audio-fix" = {
      text = "echo \"0000:01:00.2\" \| sudo tee ${variables.path.device.unbind}";
      executable = true;
      enable = true;
    };
    #clash semitelecom
    ".local/bin/semitelecom" = {
      text = "echo ${variables.secret.local.arch.password} | sudo \-S ls\nsudo clash\-meta \-d ${variables.path.clash.config}";
      executable = true;
      enable = true;
    };
    #mirai translate (novel.txt in /home/xuxin/文档/novel.txt)
    ".local/bin/mirai-zh" = {
      text = "python ${variables.path.mirai-zh}";
      executable = true;
      enable = true;
    };
    ".local/bin/mirai-en" = {
      text = "python ${variables.path.mirai-en}";
      executable = true;
      enable = true;
    };
    #btrfs defrag
    ".local/bin/defrag_home" = {
      text = "sudo btrfs filesystem defragment \-r \-v \-czstd \/home";
      executable = true;
      enable = true;
    };
    ".local/bin/defrag_root" = {
      text = "sudo btrfs filesystem defragment \-r \-v \-czstd \/";
      executable = true;
      enable = true;
    };
    #uestc vpn
    ".local/bin/easyconnect" = {
      text = "sudo docker run \-\-device ${variables.path.device.tun} \-\-cap\-add NET\_ADMIN \-ti \-p ${variables.vpn.uestc.port1} \-p ${variables.vpn.uestc.port2} \-e EC\_VER=7.6.3 \-e CLI\_OPTS=\"\-d ${variables.vpn.uestc.hostname} \-u ${variables.vpn.uestc.username} \-p ${variables.vpn.uestc.password}\" ${variables.docker.easyconnect-cli}";
      executable = true;
      enable = true;
    };
    ".local/bin/Telegram" = {
      text = "env QT_QPA_PLATFORM=wayland  ${variables.path.telegram}";
      executable = true;
    };
    ".local/bin/set-mtu" = {
      text = "sudo ip link set mtu 1380 up dev gb";
      executable = true;
    };
    ".local/bin/mount_sda1" = {
      text = "sudo mkdir ${variables.path.mount}\nsudo mkdir ${variables.path.hdd.destination}\nsudo mount ${variables.path.device.hdd} ${variables.path.hdd.destination}";
      executable = true;
    };
    ".local/bin/beesd_start" = {
      text = "echo ${variables.secret.local.arch.password} | sudo \-S systemctl restart beesd@${variables.uuid.home}.service
sudo systemctl restart beesd@${variables.uuid.gamedisk1}.service";
      executable = true;
    };
    ".local/bin/beesd_stop" = {
      text = "echo ${variables.secret.local.arch.password} | sudo \-S systemctl stop beesd@${variables.uuid.home}.service
sudo systemctl stop beesd@${variables.uuid.gamedisk1}.service";
      executable = true;
    };
    ".local/bin/iptables-clear" = {
      text = "sudo iptables \-F\nsudo iptables \-X\nsudo iptables \-t nat \-F\nsudo iptables \-t nat \-X\nsudo iptables \-t mangle \-F\nsudo iptables \-t mangle \-X\nsudo iptables \-P INPUT ACCEPT\nsudo iptables \-P FORWARD ACCEPT\nsudo iptables \-P OUTPUT ACCEPT";
      executable = true;
    };
    ".local/bin/av1" = {
      text = "mkdir encoded\nmkdir av1\nfor i in *.mp4\; do ab\-av1 encode \-\-crf ${variables.ab-av1.crf.main} -i \"\$i\" \-o \"av1\/\$i\" \&\& mv \"\$i\" encoded\/ \; done";
      executable = true;
      enable = true;
    };
    ".local/bin/ani-av1" = {
      text = "mkdir encoded\nmkdir av1\nfor i in *.mp4\; do ab\-av1 encode \-\-crf ${variables.ab-av1.crf.ani} -i \"\$i\" \-o \"av1\/\$i\" \&\& mv \"\$i\" encoded\/ \; done";
      executable = true;
      enable = true;
    };
    ".local/bin/live-av1" = {
      text = "mkdir encoded\nmkdir av1\nfor i in *.mp4\; do ab\-av1 encode \-\-crf ${variables.ab-av1.crf.live} -i \"\$i\" \-o \"av1\/\$i\" \&\& mv \"\$i\" encoded\/ \; done";
      executable = true;
      enable = true;
    };
    ".local/bin/opus-batch" = {
      text = "mkdir ogg\nfor  i in *.flac\; do ffmpeg \-hide\_banner \-nostdin \-i \"\$i\" \-f flac \- | opusenc \-\-bitrate 160k \- \"ogg\/\$\{i\%.flac\}.opus\"\; done\nfor  i in *.wav\; do ffmpeg \-hide\_banner \-nostdin \-i \"\$i\" \-f flac \- | opusenc \-\-bitrate 160k \- \"ogg\/\$\{i\%.wav\}.opus\"\; done\nfor  i in *.mp3\; do ffmpeg \-hide\_banner \-nostdin \-i \"\$i\" \-f flac \- | opusenc \-\-bitrate 160k \- \"ogg\/\$\{i\%.mp3\}.opus\"\; done\nfor  i in *.m4a\; do ffmpeg \-hide\_banner \-nostdin \-i \"\$i\" \-f flac \- | opusenc \-\-bitrate 160k \- \"ogg\/\$\{i\%.m4a\}.opus\"\; done";
      executable = true;
      enable = true;
    };
    ".local/bin/pacman_list" = {
      text = "expac \-s \"\%\-30n \%m\" | sort \-rhk 2 | less";
      executable = true;
      enable = true;
    };
  };
}
