{ config, pkgs, ...}: {

  services.pulseaudio.enable = false;
  hardware.firmware = [pkgs.sof-firmware];
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
      # extraConfig.pipewire."92-fix-audio-crackle" = {
        # "context.properties" = {
          # "default.clock.rate" = 48000;
          # "default.clock.allowed-rates" = [ 48000 ];
          # "default.clock.quantum" = 1024;
          # "default.clock.min-quantum" = 1024;
          # "default.clock.max-quantum" = 2048;
          # };
        # };
      };
    }
