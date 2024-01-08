{ config, ... }:

{
  home.file.".local/bin/".source = ./bin;
  systemd.user.services = {
    firefox = {
      Unit = {
        Description = "firefox sync daemon";
        After = "default.target";
        Requires = "default.target";
      };
      Install.WantedBy = [ "default.target " ];
      Service = {
        Type = "oneshot";
        RemainAfterExit = "yes";
        Restart = "on-failure";
        ExecStart = "${./bin/firefox-sync.sh} default";
        ExecStop = "${./bin/firefox-sync.sh} default";
        StandardOutput = "null";
        StandardError = "null";
      };
    };
    aria2 = {
      Unit = {
        Description = "aria2 deamon";
        After = "default.target";
        Requires = "default.target";
        PartOf = "default.target";
      };
      Install.WantedBy = [ "default.target" ];
      Service = {
        Type = "simple";
        ExecStart = "/usr/bin/aria2c";
      };
    };
  };
}
