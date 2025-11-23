{config, ...}:
{
 home.sessionVariables = {
  # QT
  QT_AUTO_SCREEN_SCALE_FACTOR = "1";
  QT_QPA_PLATFORMTHEME = "qt6ct";
  # Wayland
  SDL_VIDEODRIVER = "wayland";
  # Other
  NIXOS_OZONE_WL = "1";   
  GSK_RENDERER = "gl";
 };
}
