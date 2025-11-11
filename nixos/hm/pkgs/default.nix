{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [

 # Internet
   equibop
   (vivaldi.override {proprietaryCodecs = true;})
   bitwarden-desktop
   legcord

 # Media
   telegram-desktop
   smplayer
   mpv
   youtube-music
   strawberry
   ffmpeg-full
   
 # Accessories
   ncpamixer
   dunst
   libnotify
   peazip
   unrar
   unzip
   htop
   btop
   pavucontrol
   playerctl
   alacritty
   xarchiver
   i3status
   git
   zellij
   webkitgtk_6_0
   wdisplays
   yt-dlp
   audacity

 # Text Editor
   nixd
   nil

 # Graphics
   gimp3
   inkscape
   nomacs-qt6

 # Games
   lutris
   heroic
   steam-run
   steam
   hydralauncher
   libglvnd
   mesa-demos
   libdrm
   gamescope
   
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
  ];

  imports = [ ./extra ./fonts ];

}
