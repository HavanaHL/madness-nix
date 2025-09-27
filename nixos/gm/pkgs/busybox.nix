# ~ λ Does this work?
{ config, pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [ busybox ];
    pathsToLink = [ "/bin" ];
    variables.PATH = "${pkgs.busybox}/bin:${config.environment.systemPath}";
  };
}
