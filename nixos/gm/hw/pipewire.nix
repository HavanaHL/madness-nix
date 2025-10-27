{ config, pkgs, ...}:
{

 services.pipewire = {
  enable = true;
  pulse.enable = true;
  alsa.enable = true;
};

 services.pulseaudio.enable = false;
 hardware.firmware = [pkgs.sof-firmware];
 security.rtkit.enable = true;

}
