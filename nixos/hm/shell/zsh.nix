{config, pkgs, ...}: {

programs.zsh = {
 enable = true;
  enableCompletion = true;
   initContent = "export PROMPT='%~ λ '";
};

}
