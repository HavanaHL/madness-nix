{config, pkgs, ...}:
{
  # Install Busybox
  home.packages = [ pkgs.busybox ]; # This already creates the necessary symlink
}
