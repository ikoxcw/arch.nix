#!/bin/bash

  declare -A software_packages=(
    ["hyprctl"]="hyprland-git"
    ["kitty"]="kitty"
    ["nix"]="nix"
    ["waybar"]="waybar-hyprland-git"
    ["mako"]="mako"
    ["rofi"]="rofi-lbonn-wayland-git"
    # ["cava"]="cava-git" ---home-manger 
    ["swww"]="swww"
    # ["go-musicfox"]="go-musicfox" ---home-manger
    ["firefox"]="firefox"
    ["aria2"]="aria2"
    ["mpv"]="mpv"
    ["youtube-tui"]="youtube-tui"
    ["yt-dlp"]="yt-dlp"
    # ["mpd"]="mpd"
    # ["mpc"]="mpc"
    # ["ncmpcpp"]="ncmpcpp"
    ["daed"]="daed"
    ["dae"]="dae"
    ["grimblast"]="grimblast"
    # ["neofetch"]="neofetch"
    ["imagemagick"]="imagemagick"
    ["qt5-styleplugins"]="qt5-styleplugins"
    ["qt5-wayland "]="qt5-wayland"
    ["qt6-wayland"]="qt6-wayland"
    ["pipewire"]="pipewire"
    ["wireplumber"]="wireplumber"
    ["polkit-kde-agent"]="polkit-kde-agent"
    ["xdg-desktop-portal-gtk"]="xdg-desktop-portal-gtk"
    ["xdg-desktop-portal-wlr"]="xdg-desktop-portal-wlr"
    ["nerd-fonts"]="nerd-fonts"
    ["ttf-twemoji-color"]="ttf-twemoji-color"
    ["noto-fonts"]="noto-fonts"
)
  install=()
  for software in "${!software_packages[@]}"; do
    package="${software_packages[$software]}"
  if [ ! command -v "$software" &> /dev/null ] || [ ! yay -Q "$software" &> /dev/null ]; then
    echo "$software no install"
    install+=("$package")
  else
    echo "$software OK"
  fi
  done

  if [ ${#install[@]} -gt 0 ]; then
    echo "${install[@]}"
    yay -S "${install[@]}"
  else
    echo "OK"
  fi

  declare -A pacmanb_ad=(
    ["alsa-utils"]="alsa-utils"
    ["pulseaudio"]="pulseaudio"
    ["pavucontrol"]="pavucontrol"
    ["network-manager-applet"]="network-manager-applet"
    ["light"]="light"
    ["pamixer"]="pamixer"
    ["playerctl"]="playerctl"
    ["lxappearance"]="lxappearance"
    ["fish"]="fish"
    ["exa"]="exa"
    ["btop"]="btop"
    ["imv"]="imv"
    ["ntfs-3g"]="ntfs-3g"
    ["libldm"]="libldm"
    ["fcitx5-im"]="fcitx5-im"
    ["fcitx5-chinese-addons"]="fcitx5-chinese-addons"
    ["fcitx5-anthy"]="fcitx5-anthy"
  )
  insta=()
  for fs in "${!pacmanb_ad[@]}"; do
    ad="${pacmanb_ad[$fs]}"
  if [ ! command -v "$fs" &> /dev/null ] || [ ! yay -Q "$fs" &> /dev/null ]; then
    echo "$fs no install"
    insta+=("$ad")
  else
    echo "$fs OK"
  fi
  done

  if [ ${#insta[@]} -gt 0 ]; then
    echo "${insta[@]}"
    sudo pacman -S "${insta[@]}"
  else
    echo "OK"
  fi
  
  hyprpm add https://github.com/DreamMaoMao/hycov
  hyprpm enable hycov
