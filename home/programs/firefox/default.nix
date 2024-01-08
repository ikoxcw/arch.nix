{ config, pkg, ... }:

{
  home.file.".mozilla/firefox/default/chrome/logo.png".source = ./logo.png;
  home.file.".mozilla/firefox/default/chrome/userContent.css".text = import ./userContent.nix;
  home.file.".mozilla/firefox/profiles.ini".source = ./profiles.ini;
  home.file.".mozilla/firefox/chrome/userChorme.css".source = ./userChrome.css;
}
