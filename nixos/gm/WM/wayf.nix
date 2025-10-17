{config, pkgs, ...}: {

  programs.wayfire = {
  enable = true;
  xwayland.enable = true;
  plugins = with pkgs.wayfirePlugins; [
    wcm
    wayfire-plugins-extra
  ];
};

  environment.systemPackages = with pkgs; [
    fuzzel
    zellij
    nwg-look
    grim
    slurp    
    swaybg
    wl-clipboard
    swappy
  ];
  
}
