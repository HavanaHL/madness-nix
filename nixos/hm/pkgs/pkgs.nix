{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [

 # Internet
   discord
   telegram-desktop
   webcord

 # Media
   strawberry
   mpv
   smplayer
   wf-recorder
     
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
   alacritty

 # Text Editor
   helix
   emacs
   
 # Graphics
   gimp3
   audacity

 # Jogos
   lutris
   heroic
 ];

}
