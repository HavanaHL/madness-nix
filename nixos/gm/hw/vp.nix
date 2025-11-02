{config, pkgs, ...}:
{
 # nixpkgs.config.packageOverrides = pkgs: {intel-vaapi-driver = pkgs.intel-vaapi-driver.override {enableHybridCodec = true;};};
 services.xserver.videoDrivers = [ "modesetting" ];

hardware.graphics = {
  enable = true;
   enable32Bit = true;
   extraPackages = with pkgs; [ intel-vaapi-driver ];
   # extraPackages32 = with pkgs.pkgsi686Linux; [ intel-vaapi-driver ];
 };

 environment.sessionVariables = {LIBVA_DRIVER_NAME = "i965";};  
 }
