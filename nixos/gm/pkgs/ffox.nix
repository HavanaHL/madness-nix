{config, pkgs, ...}: {
  programs.firefox = {
    enable = true;
    languagePacks = ["pt-BR"];
      preferences = {"browser.startup.homepage" = "https://searx.stream";};
        policies = {
          DisableTelemetry = true;
          DisableFirefoxStudies = true;
          DisablePocket = true;
        };
  };
}
