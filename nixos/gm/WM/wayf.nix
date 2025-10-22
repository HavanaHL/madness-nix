{config, pkgs, ...}:
{
  programs.wayfire = {
  enable = true;
  xwayland.enable = true;
  plugins = with pkgs.wayfirePlugins; [
    wcm
    wayfire-plugins-extra
    ];
  }; 
}
