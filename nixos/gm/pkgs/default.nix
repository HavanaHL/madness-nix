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
  gpu-screen-recorder-gtk
  
  # Compile
  clang
  gcc
  cmake
  meson
  ninja
  llvm
  lld
];

 # Pains
 programs.xfconf.enable = true;
 programs.nano.enable = false;
 nix.package = pkgs.lixPackageSets.latest.lix; # Enable Lix
 nixpkgs.config.allowUnfree = true;
 programs.appimage.enable = true;
 programs.appimage.binfmt = true;
 programs.gpu-screen-recorder = {
  enable = true;
 };

 # Imports
 imports = [ ./extra/flks.nix ./extra/thunar.nix];
}
