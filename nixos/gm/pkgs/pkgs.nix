{config, pkgs, ...}: {

 nix.package = pkgs.lixPackageSets.latest.lix; # Enable Lix

 environment.systemPackages = with pkgs; [
  # Text editor
  helix
  emacs
  nixd
  nil
  
  # Sys
  ffmpeg
  wget
  polkit_gnome
  appimage-run
  (pkgs.busybox.override {enableAppletSymlinks = true;})
];

}
