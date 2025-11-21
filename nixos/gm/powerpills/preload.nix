{config, pkgs, ...}: {
  services.preload = {
    enable = true;
    package = pkgs.preload;
  };
}
