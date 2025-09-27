{config, pkgs, ...}: {
 home.sessionVariables = {

  # QT
  QT_AUTO_SCREEN_SCALE_FACTOR = "1";
   
  # Wayland
  SDL_VIDEODRIVER = "wayland";
  MOZ_ENABLE_WAYLAND = "1";
  QT_QPA_PLATFORM = "wayland;xcb";
    
  # Tema escuro para várias aplicações
  NIXOS_OZONE_WL = "1";   
   };
}
