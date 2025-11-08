{config, pkgs, ...}: {

programs.zsh = {
 enable = true;
  enableCompletion = true;
   initContent = "export PROMPT='%~ λ '
    export NH_FLAKE=/etc/nixos
    export GSK_RENDERER=ngl
    export QT_QPA_PLATFORMTHEME=qt6ct";
};

}
