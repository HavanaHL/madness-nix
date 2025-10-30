{config, ...}:
{
  services.xserver.desktopManager.xfce = {
    enable = true;
    enableWaylandSession = true;
    waylandSessionCompositor = "labwc";
  };
}
