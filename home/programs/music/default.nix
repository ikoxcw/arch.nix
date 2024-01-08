{ config, pkgs, ... }:

{
  home = {
    packages = with pkgs; [
      cava
      mpc-cli
      go-musicfox
    ];
  };
  programs = {
    ncmpcpp = {
      enable = true;
      mpdMusicDir = null;
    };
  };
  home.file = {
    ".config/ncmpcpp/config".text = '' mpd_music_dir = ~/Music '';
    ".config/go-musicfox/go-musicfox.ini".text = import ./go-musicfox.nix;
    ".config/mpd/mpd.conf".text = import ./mpd.nix;
    ".config/cava/config".source = ./cava_config;
    ".config/cava/config_internal".source = ./cava_config_internal;
  };

  services = {
    mpd = {
      enable = true;
      musicDirectory = "~/Music";
      extraConfig = ''
        audio_output {
                type            "pipewire"
                name            "PipeWire Sound Server"
        }
      '';
    };
  };
}
