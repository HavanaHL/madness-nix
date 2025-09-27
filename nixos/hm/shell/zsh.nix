{config, pkgs, ...}: {

programs.zsh = {
 enable = true;
  enableCompletion = true;
   initContent = "export PROMPT='%~ λ '
    export NH_FLAKE=/etc/nixos";
};

}
