{config, pkgs, ...}: {

  home.sessionVariables = {
    EDITOR = "helix";
    VISUAL = "helix";
    TERMINAL = "alacritty";
  };

  xdg.mimeOverrides = {
    "text/plain" = "helix.desktop";
    "application/x-shellscript" = "helix.desktop";
  };

  xdg.defaultApplications = {
    textEditor = "helix.desktop";
    terminal = "alacritty.desktop";
    webBrowser = "firefox.desktop"; 
  };
}
