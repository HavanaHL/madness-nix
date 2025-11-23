# ~ λ
self: super: {

 # Overlay the Mesa package
 mesa = (super.mesa.override {
  # Customize
  galliumDrivers = [ "crocus" "llvmpipe" "i915" ];
  vulkanDrivers = [ "intel" ];
  withValgrind = false;
}).overrideAttrs (prevAttrs: {
  depsBuildBuild =
    super.lib.remove super.buildPackages.stdenv.cc prevAttrs.depsBuildBuild
    ++ [super.buildPackages.llvmPackages.clang];

  mesonBuildType = "release";
  # Optimizations
  mesonFlags = prevAttrs.mesonFlags ++ [
    (super.lib.mesonOption "c_args" "-O3 -pipe -march=silvermont -mtune=silvermont")
    (super.lib.mesonOption "cpp_args" "-O3 -pipe -march=silvermont -mtune=silvermont")
    
    # Compile Options
    (super.lib.mesonBool "gallium-rusticl" false)
    (super.lib.mesonBool "gallium-extra-hud" false)
    (super.lib.mesonBool "install-mesa-clc" false)
    (super.lib.mesonBool "install-precomp-compiler" false)
    # Hardware Acceleration
    (super.lib.mesonEnable "gallium-va" false)
    (super.lib.mesonEnable "gallium-vdpau" false)

  ];

  outputs = ["out"];
  postInstall = "";
});
}
