{pkgs, config, ...}: {

  imports = [
   ./hm/pkgs/fonts/fonts.nix
   ./hm/pkgs/fonts/fonts.nix
   ./hm/pkgs/pkgs.nix  
   ./hm/git/git.nix
  ];

  home.username = "deive";
  home.homeDirectory = "/home/deive";

  programs.home-manager.enable = true;
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      initExtra = ''
         export PROMPT='%~ λ '
       '';
  };

  nixpkgs.config.allowUnfree = true;

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "25.05";
}
