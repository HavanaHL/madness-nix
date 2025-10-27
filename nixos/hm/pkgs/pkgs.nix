{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [

 # Internet
   telegram-desktop
   equibop
   (vivaldi.override {proprietaryCodecs = true;})
   bitwarden-desktop

 # Media
   smplayer
   mpv
   youtube-music
   gpu-screen-recorder-gtk
   strawberry
   ffmpeg-full
   
 # Accessories
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
   helix
   emacs-pgtk
   
 # Graphics
   gimp3
   inkscape

 # Games
   lutris
   heroic
   steam-run
   steam

 # WM things
   fuzzel
   grim
   slurp
   swaybg
   wl-clipboard-rs
   swappy
   waybar   
 ];

  programs.nh = {
    enable = true;
    flake =  "/etc/nixos";
  };
}
