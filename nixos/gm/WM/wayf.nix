{config, pkgs, ...}: {

  programs.wayfire = {
  enable = true;
  plugins = with pkgs.wayfirePlugins; [
    wcm
    wayfire-plugins-extra
  ];
};

  environment.systemPackages = with pkgs; [
    fuzzel
    foot
    zellij
    nwg-look
    grim
    slurp    
    swaybg
    wl-clipboard
    swappy
  ];
  
}
