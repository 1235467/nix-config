{ config, pkgs, ... }:
let
  variables = import ../../../variables;
in
{
  home.sessionVariables = {
    PATH = "$PATH:${variables.fish.variables.PATH}";
    IPFS_PATH = "${variables.fish.variables.IPFS_PATH}";
    PERL5LIB = "$PERL5LIB:${variables.fish.variables.PERL5LIB}";
    PERL_LOCAL_LIB_ROOT = "$PERL_LOCAL_LIB_ROOT:${variables.fish.variables.PERL_LOCAL_LIB_ROOT}";
    PERL_MM_OPT = "INSTALL_BASE=${variables.fish.variables.PERL_MM_OPT}";
    CATAI_DOWNLOAD_LOCATION = "${variables.fish.variables.CATAI_DOWNLOAD_LOCATION}";
    #BLENDER="${variables.fish.variables.BLENDER=}";
    DOCKER_CONFIG = "${variables.fish.variables.DOCKER_CONFIG}";
    S3_ENDPOINT_URL = "${variables.fish.variables.S3_ENDPOINT_URL}";
    AWS_ACCESS_KEY_ID = "${variables.s3.id}";
    AWS_SECRET_ACCESS_KEY = "${variables.s3.key}";
    AWS_ENDPOINT_URL = "${variables.s3.url1}";
    LANG = "zh_CN.utf8";
  };
}


