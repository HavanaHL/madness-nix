{config, ...}:
{
  services.xserver.desktopManager.xfce = {
    enable = true;
    enableWaylandSession = true;
    waylandSessionCompositor = "wayfire -c /home/deive/.config/xfce.ini";
  };
}
