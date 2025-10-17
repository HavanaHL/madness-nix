{config, pkgs, ...}: {

 nix.package = pkgs.lixPackageSets.latest.lix; # Enable Lix

 environment.systemPackages = with pkgs; [
  # Text editor
  nixd
  nil
  
  # Sys
  ffmpeg
  wget
  polkit_gnome
  appimage-run
  wineWowPackages.stagingFull
  winetricks

  # Audio
  playerctl

];
 programs.nano.enable = false;
}
