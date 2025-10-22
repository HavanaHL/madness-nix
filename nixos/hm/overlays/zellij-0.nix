# ~ λ
self: super: {

  # Overwrite the zellij package
  zellij = super.zellij.overrideAttrs (oldAttrs: {

    # preConfigure 
    preConfigure = (oldAttrs.preConfigure or "") + ''
      export RUSTFLAGS="$RUSTFLAGS -C target-cpu=silvermont -C opt-level=3"
      echo "--- Portage is not here. ---"
    '';
  });
}
