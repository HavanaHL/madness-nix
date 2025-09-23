# ~ λ 
{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./gm/HW/vp.nix
      ./gm/pkgs
      ./gm/WM/wayf.nix      
      ./gm/fltp/fltp.nix
      ./gm/scy/doas.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Set kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Network
  networking.hostName = "Cheshire"; 
  networking.wireless.iwd.enable = true;
  networking.wireless.iwd.settings = {Settings = {AutoConnect = true;};};
  # networking.networkmanager.enable = true;  
  services.seatd.enable = true;

  # Set time zone.
  time.timeZone = "America/Maceio";

  # Locales
  i18n.defaultLocale = "pt_BR.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

 # Configure keymap in X11
  services.xserver.xkb = {
    layout = "br";
  };

  # Configure console keymap
  console.keyMap = "br-abnt2";

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Define a user account. 
  users.users.deive = {
    isNormalUser = true;
    description = "deive";
    extraGroups = ["networkmanager" "wheel" "seat" "video"];
    packages = with pkgs; [];
  };

  # Shell
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  # Logind
  services.logind.lidSwitch = "ignore";
  
  # System state 
  system.stateVersion = "25.05";
}
