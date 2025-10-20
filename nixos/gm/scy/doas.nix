{config, pkgs, ...}:
{
 security.doas = {
  enable = true;
  extraRules = [{
    users = ["deive"];
    keepEnv = true;
    persist = true;
  }];
 };
}
