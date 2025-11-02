# ~ λ Madness NixOS
{ config, lib, pkgs, super, ... }:
{
  imports =
    [ 
      ./gm/hw/hc.nix
      ./gm/hw/vp.nix
      ./gm/pkgs
      ./gm/ui/wayf.nix      
      ./gm/fltp/fltp.nix
      ./gm/scy/doas.nix
      ./gm/hw/pipewire.nix
      ./gm/powerpills/cpu.nix
      ./gm/hw/swap.nix
      ./gm/powerpills/preload.nix
      ./gm/scy/dns.nix
      ./gm/ui/xfce.nix
      ./gm/powerpills/overlays
    ];

  # Boot
    # efi
    boot.loader.efi.canTouchEfiVariables = true; 
    boot.loader.efi.efiSysMountPoint = "/boot/efi";
    # grub
    boot.loader.grub.efiSupport = true;
    boot.loader.grub.device = "nodev";
    # Tmpfs
    boot.tmp.useTmpfs = true;

  # Set kernel.
  boot.kernelPackages = pkgs.linuxPackages_xanmod;

  # Network
  networking.hostName = "Cheshire"; 
  networking.wireless.iwd.enable = true;
  networking.wireless.iwd.settings = {Settings = {AutoConnect = true;};};

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
  services.xserver.xkb.layout = "br"; 

  # Configure console keymap
  console.keyMap = "br-abnt2";
 
  # User account 
  users.users.deive = {
    isNormalUser = true;
    description = "deive";
    extraGroups = [ "wheel" "seat" "video" ];
    packages = with pkgs; [ tree ];
  };

  # Shell
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  # Logind
  services.logind.settings.Login.HandleLidSwitch = "ignore";

  # Security
  security.polkit.enable = true;  
  services.seatd.enable = true;
  
  # System state 
  system.stateVersion = "25.05";
}
