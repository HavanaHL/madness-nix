{config, pkgs, ...}: {

 qt = {
    enable = true;
    platformTheme.name = "gtk";
  };

  # gtk = {
    # enable = true;

    # iconTheme = {
      # name = "Gruvbox-Plus-Dark";
      # package = pkgs.gruvbox-plus-icons; };

    # cursorTheme = {
      # name = "BreezeX-Black";
      # package = pkgs.bree ;
      # };

    # theme = {
      # name = "Gruvbox-Dark";
      # package = pkgs.gruvbox-dark-gtk; };
    # };

   home.sessionVariables = {
    QT_STYLE_OVERRIDE = "gtk2";
    QT_QPA_PLATFORMTHEME = "gtk2";
  };
 }
