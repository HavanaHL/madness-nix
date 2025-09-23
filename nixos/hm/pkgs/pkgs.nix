{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [

 # Internet
   discord
   telegram-desktop

 # Media
   youtube-music
   strawberry
   mpv
   smplayer

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
   mate.engrampa
   waypaper
   xfce.xfce4-panel
 # Graphics
   gimp3
   audacity

 # Jogos
   lutris

 ];
  
}
