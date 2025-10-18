{config, pkgs, ...}: {
fonts.fontconfig.enable = true; 
home.packages = with pkgs; [
  nerd-fonts.jetbrains-mono
  nerd-fonts.ubuntu-mono
  nerd-fonts.ubuntu
  nerd-fonts.ubuntu-sans
  nerd-fonts.dejavu-sans-mono
  nerd-fonts.fira-code
  nerd-fonts.overpass
  inter
  nerd-fonts.victor-mono
  nerd-fonts.symbols-only ];
}
