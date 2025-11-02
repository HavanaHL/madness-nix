{config, pkgs, lib, ...}:
{
  imports = [./helix.nix];
  home.packages = with pkgs.xfce; [
   xfce4-panel
   xfce4-pulseaudio-plugin
   xfce4-whiskermenu-plugin
   xfconf
   garcon
   libxfce4util
   libxfce4windowing    
  ]; 
  
    programs.nh = {
    enable = true;
    flake =  "/etc/nixos";
  };
}

