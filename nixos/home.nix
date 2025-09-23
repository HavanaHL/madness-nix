{pkgs, config, ...}: {

  imports = [
   ./hm/pkgs/fonts/fonts.nix
   ./hm/pkgs/fonts/fonts.nix
   ./hm/pkgs/pkgs.nix  
   ./hm/git/git.nix
   ./hm/shell/zsh.nix
  ];

  home.username = "deive";
  home.homeDirectory = "/home/deive";

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "25.05";
}
