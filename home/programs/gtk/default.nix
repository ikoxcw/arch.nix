{ pkgs, ... }:
{
  home.sessionVariables = {
    GTK_THEME = "Catppuccin-Frappe-Pink";
  };
  gtk = {
    enable = false;
    theme = {
      name = "Catppuccin-Frappe-Pink";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "pink" ];
        size = "compact";
        tweaks = [ "rimless" "black" ];
        variant = "frappe";
      };
    };
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 12;
    };
    gtk3.extraConfig = {
      gtk-xft-antialias = 1;
      gtk-xft-hinting = 1;
      gtk-xft-hintstyle = "hintslight";
      gtk-xft-rgba = "rgb";
    };
    gtk2.extraConfig = ''
      gtk-xft-antialias=1
      gtk-xft-hinting=1
      gtk-xft-hintstyle="hintslight"
      gtk-xft-rgba="rgb"
    '';
  };
  /* qt.platformTheme = "gtk"; */
}
