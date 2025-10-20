{config, ...}:
{
  imports = [
   ./hm/pkgs/fonts/fonts.nix
   ./hm/pkgs/pkgs.nix  
   ./hm/shell/zsh.nix
   ./hm/look/gui.nix
   ./hm/env/dft.nix
   ./hm/env/var.nix
  ];

  home.username = "deive";
  home.homeDirectory = "/home/deive";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
  
}
