{config, pkgs, ...}:
{
  # Enable Plasma
  services = {
    desktopManager.plasma6.enable = true;
    displayManager.sddm.wayland.enable = true;
    displayManager.sddm.enable = true;
  };

  # Debloat
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    plasma-browser-integration
    ark
    elisa
    okular
    kate
    khelpcenter
    baloo
    baloo-widgets
    spectacle
    ocean-sound-theme
    milou
    kwalletmanager
    discover
  ];  
}
