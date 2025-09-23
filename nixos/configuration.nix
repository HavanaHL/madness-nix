# ~ λ 
{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./gm/HW/vp.nix
      ./gm/pkgs/flks.nix
      ./gm/WM/wayf.nix      
      ./gm/fltp/fltp.nix
      ./gm/pkgs/ffox.nix
      ./gm/pkgs/thunar.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "Cheshire"; # Define your hostname.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.
  services.seatd.enable = true;
  # Set your time zone.
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
    extraGroups = ["networkmanager" "wheel" "seat"];
    packages = with pkgs; [];
  };

  environment.systemPackages = with pkgs; [
  helix
  ffmpeg
  emacs
  nixd
  nil
  wget
  polkit_gnome
  appimage-run
  ];

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  
  # Seila
  services.logind = {
  lidSwitch = "ignore";  
  lidSwitchDocked = "ignore";
 };

  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "25.05"; # Did you read the comment?
}
