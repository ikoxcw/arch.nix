#!/bin/bash

declare -A software_packages=(
    ["firefox"]="firefox"
    ["hyprctl"]="hyprland-git"
    ["kitty"]="kitty"
	["nix"]="nix"
)

for software in "${!software_packages[@]}"; do
    package="${software_packages[$software]}"
    if ! command -v "$software" &> /dev/null; then
        echo "$software no install"
        yay -S "$package"
    else
        echo "$software OK。"
    fi
done

  if [ ! -e $HOME/.config/nix/nix.conf ]; then
	mkdir -p $HOME/.config/nix/
	echo "experimental-features = nix-command flakes" > $HOME/.config/nix/nix.conf
  else
	echo "experimental-features = nix-command flakes" > $HOME/.config/nix/nix.conf
  fi

  if [ ! -e $HOME/.config/home-manager/home.nix ] && [ ! -e $HOME/.config/home-manager/flakes ]; then
  	nix run home-manager/master -- init --switch
  fi
  echo "Please cp $HOME/.config/home-manager"

