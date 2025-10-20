{config, pkgs, ...}:
{
 # Global Packages
 environment.systemPackages = with pkgs; [

  # Text editor
  nixd
  nil
  
  # Sys
  ffmpeg
  wget
  appimage-run
  wineWowPackages.stagingFull
  winetricks
  mate.mate-polkit

  # Audio
  playerctl

];

 # Pains
 programs.nano.enable = false;
 nix.package = pkgs.lixPackageSets.latest.lix; # Enable Lix
 nixpkgs.config.allowUnfree = true;

}
