{config, pkgs, ...}: {
  programs.firefox = {
    enable = true;
    languagePacks = ["pt-BR"];
      preferences = {
        "browser.cache.disk.enable" = false;
        "browser.cache.memory.enable" = true;
        "sidebar.verticalTabs" = true;
        "sidebar.verticalTabs.dragToPinPromo.dismissed" = true;
      };
        policies = {
          DisableTelemetry = true;
          DisableFirefoxStudies = true;
          DisablePocket = true;
          AppAutoUpdate = false;
          GenerativeAI = false;
    };
  };
}
