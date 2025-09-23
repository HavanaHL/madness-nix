{ config, ... }: {
  programs.git = {
    enable = true;
    userName = "HavanaHL";
    userEmail = "deivepython@protonmail.com";
    extraConfig.credential.helper = "store";
  };
}
