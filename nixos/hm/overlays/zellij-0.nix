# ~ λ
self: super: oldAttrs: {

  # Overwrite the zellij package
  zellij = super.zellij.overrideAttrs (oldAttrs: {
    env = oldAttrs.env or {} // {
      RUSTFLAGS = oldAttrs.env.RUSTFLAGS or "" + builtins.toString [
        "-C target-cpu=silvermont"
        "-C opt-level=3"
      ];
    };
  });
}

