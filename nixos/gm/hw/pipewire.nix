{ config, pkgs, ...}:
{

 services.pipewire = {
  enable = true;
  pulse.enable = true;
  alsa.enable = true;
};

 services.pulseaudio.enable = false;
 security.rtkit.enable = true;

}
