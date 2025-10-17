{config, pkgs, ...}: {

  # Common approach:
    # programs.sway = {
      # enable = true;
      # package = pkgs.swayfx;
      # wrapperFeatures.gtk = true;
      # extraPackages = with pkgs; [ i3status-rust ];
    # };

  # More minimalist approach:
  environment.systemPackages = with pkgs; [ swayfx i3status-rust ];
}
