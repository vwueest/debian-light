#!/bin/bash

sudo apt-get install nala -y
sudo nala install -y --no-install-recommends \
    xfce4
sudo nala install -y --no-install-recommends \
    libxfce4ui-utils \
    thunar \
    xfce4-appfinder \
    xfce4-panel \
    xfce4-session \
    xfce4-settings \
    xfce4-terminal \
    xfconf \
    xfdesktop4 \
    xfwm4
sudo nala install -y --no-install-recommends \
    falkon \
    vim \
    htop \
    tmux \
    neofetch \
    papirus-icon-theme arc-theme \
    spice-vdagent \
    spice-webdavd \
    xfce4-whiskermenu-plugin \
    arandr
sudo nala install -y \
    lightdm

# setup autologin

# Specify the LightDM configuration file path
CONFIG_FILE="/etc/lightdm/lightdm.conf"

# Enable autologin in the LightDM configuration file
echo "[Seat:*]" | sudo tee -a "$CONFIG_FILE"
echo "autologin-user=$USER" | sudo tee -a "$CONFIG_FILE"
echo "autologin-user-timeout=0" | sudo tee -a "$CONFIG_FILE"

# set default resolution
echo "# Get the name of the main display
DISPLAY_NAME=\$(xrandr | awk '/ connected /{print \$1; exit}')

# Set the resolution to 1920x1080 (1080p)
xrandr --output "\$DISPLAY_NAME" --mode 1920x1080
" >> $HOME/.xsessionrc

sudo reboot
