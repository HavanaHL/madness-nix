{config, pkgs, ...}:
{
 nixpkgs.config.packageOverrides = pkgs: {intel-vaapi-driver = pkgs.intel-vaapi-driver.override {enableHybridCodec = true;};};
 services.xserver.videoDrivers = [ "intel" ];

 hardware.graphics = {
   enable = true;
   enable32Bit = true;
   extraPackages = with pkgs; [
     intel-vaapi-driver # i965 
     libvdpau-va-gl
     mesa
   ];
 };

 environment.sessionVariables = { 
   LIBVA_DRIVER_NAME = "i965"; 
   VDPAU_DRIVER = "va_gl";  
 };  
 
}
