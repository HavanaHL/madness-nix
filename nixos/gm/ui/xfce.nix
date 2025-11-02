{config, ...}:
{
  services.displayManager.ly = {
    enable = true;
    x11Support = true;
  };
  services.xserver.desktopManager.xfce = {
    enable = true;
    enableWaylandSession = true;
    waylandSessionCompositor = "labwc";
  };
}
