{config, pkgs, ...}: {

programs.zsh = {
 enable = true;
  enableCompletion = true;
   initContent = "export PROMPT='%~ λ '
    export NH_FLAKE=~/Genesis/github/madness-nix/nixos
    export GSK_RENDERER=ngl";
};

}
