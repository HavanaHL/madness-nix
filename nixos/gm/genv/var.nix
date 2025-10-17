{config, pkgs, ...}: {
  environment.sessionVariables = {
    XDG_CURRENT_DESKTOP = "Wayfire";
    XDG_SESSION_TYPE = "wayland";
    # MOZ_ENABLE_WAYLAND = "1";
    QT_QPA_PLATFORM = "wayland";
    SDL_VIDEODRIVER = "wayland";
  };
  services.dbus.enable = true;
}
