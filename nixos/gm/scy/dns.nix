{config, lib, ...}:
{
  networking.nameservers = [ "1.1.1.1" "1.0.0.1" ];
  networking.useNetworkd = true;
  services.resolved.enable = true;
}
