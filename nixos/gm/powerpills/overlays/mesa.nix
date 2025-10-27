# ~ λ
self: super: oldAttrs: {

  # Overwrite the zellij package
  mesa = super.mesa.overrideAttrs (oldAttrs: {
    env = oldAttrs.env or {} // {
      CC = oldAttrs.env.CC or "" + builtins.toString [ "gcc" ];
      CXX = oldAttrs.env.CXX or "" + builtins.toString [ "g++" ];
      CFLAGS = oldAttrs.env.CFLAGS or "" + builtins.toString [ "-march-silvermont" "-O3" ];
      CXXFLAGS = oldAttrs.env.CXXFLAGS or "" + builtins.toString [ "-march-silvermont" "-O3" ];      
    };
  });
}

