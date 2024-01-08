{ config, pkgs, ... }:

{
  programs = {
    obs-studio.enable = false;
  };
  home.file.".config/obs-studio/themes".source = ./themes;
}
