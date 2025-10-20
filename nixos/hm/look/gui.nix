{config, pkgs, ...}:
{

 qt = {
    enable = true;
    platformTheme.name = "gtk";
  };

 home.sessionVariables = {
  QT_STYLE_OVERRIDE = "gtk2";
  QT_QPA_PLATFORMTHEME = "gtk2";
  };

 }
