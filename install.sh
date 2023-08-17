#!/bin/bash

sudo apt-get install nala -y
sudo nala install --no-install-recommends \
    xfce4 \
    libxfce4ui-utils \
    thunar \
    xfce4-appfinder \
    xfce4-panel \
    xfce4-session \
    xfce4-settings \
    xfce4-terminal \
    xfconf \
    xfdesktop4 \
    xfwm4 \
    falkon \
    vim \
    htop \
    tmux \
    neofetch \
    papirus-icon-theme arc-theme \
    spice-vdagent \
    spice-webdavd \
    lightdm \
    -y

# setup autologin

# Specify the LightDM configuration file path
CONFIG_FILE="/etc/lightdm/lightdm.conf"

# Enable autologin in the LightDM configuration file
echo "[Seat:*]" | sudo tee -a "$CONFIG_FILE"
echo "autologin-user=$USER" | sudo tee -a "$CONFIG_FILE"
echo "autologin-user-timeout=0" | sudo tee -a "$CONFIG_FILE"
