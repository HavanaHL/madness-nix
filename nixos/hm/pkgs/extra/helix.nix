{
  config,
  pkgs,
  lib,
  ...
}:
let
  kanaboxDefaultTheme = (
    builtins.fromTOML (builtins.readFile "/home/deive/Modelos/Back/helix/themes/kanabox_viado.toml")
  );
in
{
  programs.helix = {
    enable = true;
    settings = {
      theme = "kanabox_x";
    };
    themes = {
      kanabox_default = kanaboxDefaultTheme;
      kanabox_x = {
        inherits = "kanabox_default";
        "ui.background" = { };
      };
    };
    languages = {
      language = [
        {
          name = "nix";
          auto-format = false;
          formatter.command = "${pkgs.nixfmt}/bin/nixfmt";
        }
      ];
    };
  };
}
