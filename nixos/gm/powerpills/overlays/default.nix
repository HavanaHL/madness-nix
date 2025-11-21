{config, ...}:
{
  nixpkgs.overlays = [
    ( import ./mesa.nix )
  ];
}
