{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [

 # Internet
   equibop
   (vivaldi.override {proprietaryCodecs = true;})
   bitwarden-desktop
   freetube
   legcord
   webkitgtk_6_0
   chromium

 # Media
   telegram-desktop
   smplayer
   mpv
   youtube-music
   strawberry
   ffmpeg-full
   xfce.ristretto

 # Utils
   busybox
   tldr
   libnotify
   wdisplays
   yt-dlp
   unrar
   unzip
   peazip

   # Accessories
   ncpamixer
   pavucontrol
   playerctl
   alacritty
   git
   zellij
   nwg-look

 # System
   nix-output-monitor
   htop
   btop
    
 # Text Editor
   nixd
   nil

 # Graphics
   gimp3
   inkscape
   audacity


 # Games
   lutris
   heroic
   steam-run
   steam
   hydralauncher
   libglvnd
   mesa-demos
   libdrm
   
 # WM things
   fuzzel
   grim
   slurp
   swaybg
   wl-clipboard-rs
   swappy
   waybar   
   kdePackages.qt6ct
   kdePackages.qt6gtk2
   dunst
  ];

  imports = [ ./extra ./fonts ];
}
