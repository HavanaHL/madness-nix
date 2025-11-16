{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [

 # Internet
   equibop
   (vivaldi.override {proprietaryCodecs = true;})
   bitwarden-desktop
   freetube

 # Media
   telegram-desktop
   smplayer
   mpv
   youtube-music
   strawberry
   ffmpeg-full
   
 # Accessories
   tldr
   ncpamixer
   libnotify
   peazip
   unrar
   unzip
   pavucontrol
   playerctl
   alacritty
   xarchiver
   git
   zellij
   wdisplays
   yt-dlp
   audacity

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
