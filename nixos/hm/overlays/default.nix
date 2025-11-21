{config, self, pkgs, ...}:
{
  nixpkgs.overlays = [
    ( import ./zellij-0.nix )
  ];
}
