{
  programs = {
    git = {
      enable = false;
      userName = "ikoxcw";
      userEmail = "78737594+ikoxcw@users.noreply.github.com";
      signing = {
        key = "0574B20A6372EB2A";
        signByDefault = true;
      };
      extraConfig = {
        url = {
          "ssh://git@github.com:ikoxcw" = {
            insteadOf = "https://github.com/ikoxcw";
          };
        };
      };
    };
  };
}
