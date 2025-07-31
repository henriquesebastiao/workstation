# ~/.local/share
cp -r ~/.local/share/backgrounds .local/share/
cp -r ~/.local/share/fonts .local/share/
cp -r ~/.local/share/icons .local/share/

# ~/.fonts
cp -r ~/.fonts .

# ~/.config

# GitHub CLI
cp -r ~/.config/gh .config/

# Poetry
cp -r ~/.config/pypoetry .config/

# Flameshot
cp ~/.config/flameshot/flameshot.ini .config/flameshot/

# btop
cp ~/.config/btop/btop.conf .config/btop/
cp -r ~/.config/btop/themes .config/btop/themes/

# neofetch
cp ~/.config/neofetch/config.conf .config/neofetch/

# GNOME
cp -r ~/.config/gtk-3.0 .config/

# VS Code
cp ~/.config/Code/User/settings.json .config/Code/User/

# OBS
cp ~/.config/obs-studio/global.ini .config/obs-studio/
cp ~/.config/obs-studio/user.ini .config/obs-studio/


# spaceship
cp ~/.config/spaceship.zsh .config/

# System
cp ~/.config/monitors.xml .config/
cp ~/.config/user-dirs.dirs .config/
cp ~/.config/user-dirs.locale .config/
cp ~/.config/mimeapps.list .config/

# ~/

# ~/.spotdl
cp ~/.spotdl/config.json .spotdl/

cp ~/.aliases .
cp ~/.zshrc  .

# ~/.emacs.d
cp ~/.emacs.d/init.el .emacs.d/
cp -r ~/.emacs.d/config/*.el .emacs.d/config/

# Get GNOME settings
gsettings list-recursively > gsettings.txt

cp -r /etc/X11/xorg.conf.d raiz/etc/X11/xorg.conf.d/

cp /etc/pacman.conf raiz/etc/
