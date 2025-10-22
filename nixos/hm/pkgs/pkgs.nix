{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [

 # Internet
   telegram-desktop
   equibop
   librewolf-bin
   (vivaldi.override {proprietaryCodecs = true;})
   bitwarden-desktop
   epiphany

 # Media
   audacious
   mpv
   youtube-music
   gpu-screen-recorder-gtk
   strawberry
   ffmpeg-full
   
 # Accessories
   rio
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
   i3status
   kdePackages.kdeconnect-kde
   git
   zellij
   
 # Text Editor
   helix
   
 # Graphics
   gimp3
   inkscape

 # Games
   lutris
   heroic
   steam-run
   steam
   
 ];

  programs.nh = {
    enable = true;
    flake =  "/etc/nixos";
  };
}
