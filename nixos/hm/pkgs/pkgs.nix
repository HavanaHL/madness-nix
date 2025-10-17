{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [

 # Internet
   discord
   telegram-desktop
   vivaldi
   vivaldi-ffmpeg-codecs

 # Media
   audacious
   mpv
   youtube-music
   
 # Accessories
   copyq
   dunst
   libnotify
   nix-search-cli
   peazip
   unrar
   unzip
   htop
   btop
   pavucontrol
   playerctl
   xfce.xfce4-panel
   xfce.xfce4-whiskermenu-plugin
   xfce.xfce4-pulseaudio-plugin
   xfce.xfconf
   alacritty
   xarchiver

 # Text Editor
   helix
   
 # Graphics
   gimp3
   inkscape

 # Games
   lutris
   heroic
 ];

  programs.nh = {
    enable = true;
    flake =  "/etc/nixos";
  };

}
