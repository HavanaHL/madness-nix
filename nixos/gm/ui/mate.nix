{config, pkgs, ...}:
{
  services.xserver = {
    enable = true;
    displayManager = {
      lightdm.enable = false;
    };
    desktopManager.mate = {
      enable = true;
      enableWaylandSession = true;
    };
  };
  environment.mate.excludePackages = with pkgs; [
    mate.mate-terminal
    mate.pluma
    mate.mate-notification-daemon
    mate.mate-calc
  ];
  environment.systemPackages = [
    pkgs.mate.mate-tweak
    pkgs.mate.mate-icon-theme-faenza
  ];
}
