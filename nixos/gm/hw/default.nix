{config, pkgs, ...}:
{
  imports = [
    ./hc.nix
    ./pipewire.nix
    ./swap.nix
    ./vp.nix
  ];
}
