{ config, ... }:
{
  home.file.".bash_profile".text = ''  
  	export PATH="$PATH:$HOME/.local/bin:$HOME/.nix-profile/bin"
	  # export XDG_DATA_DIRS="$XDG_DATA_DIRS:$HOME/.nix-profile/share/"
   	export ikoxcw=/home/ikoxcw/
      if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
       	export GTK_THEME=Catppuccin-Frappe-Pink          
       	# export GTK_THEME=Catppuccin-Latte-Green
       	# export GTK_THEME=Nordic
       	 exec  Hyprland
	  fi
	  '';
  home.file.".bashrc".text = ''
    	[[ $- != *i* ]] && return
    	alias ls='ls --color=auto'
    	alias grep='grep --color=auto'
    	PS1='[\u@\h \W]\$ '
    	'';
}
