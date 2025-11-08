{config, pkgs, ...}:
{
 # Global Packages
 environment.systemPackages = with pkgs; [

  # Sys
  ffmpeg
  wget
  mate.mate-polkit
  mesa

  # Audio
  playerctl
  wineWowPackages.staging
  winetricks
];

 # Pains
 programs.nano.enable = false;
 nix.package = pkgs.lixPackageSets.latest.lix; # Enable Lix
 nixpkgs.config.allowUnfree = true;
 programs.appimage.enable = true;
 programs.appimage.binfmt = true;

 # Imports
 imports = [ ./extra/flks.nix ./extra/thunar.nix];
}
