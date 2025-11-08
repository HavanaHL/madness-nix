{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [

 # Internet
   equibop
   (vivaldi.override {proprietaryCodecs = true;})
   bitwarden-desktop

 # Media
   telegram-desktop
   smplayer
   mpv
   youtube-music
   strawberry
   ffmpeg-full
   gpu-screen-recorder-gtk
   
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
   
 # Text Editor
   emacs-nox
   nixd
   nil

 # Graphics
   gimp3
   inkscape

 # Games
   lutris
   heroic
   steam-run
   steam
   hydralauncher
   
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
