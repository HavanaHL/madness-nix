{config, pkgs, lib, ...}:
let
  kanaboxDefaultTheme = (
    builtins.fromTOML (builtins.readFile ./kanabox_viado.toml)
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
          formatter.command = "${pkgs.nixfmt}/bin/nixfmt";
        }
      ];
    };
  };
}
