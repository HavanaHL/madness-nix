{config, ...}:
{
 home.sessionVariables = {
  # QT
  QT_AUTO_SCREEN_SCALE_FACTOR = "1";
  # Wayland
  SDL_VIDEODRIVER = "wayland";
  # Other
  NIXOS_OZONE_WL = "1";   
 };
}
