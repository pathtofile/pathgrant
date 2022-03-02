#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive

# Update
apt update --yes

# Install Desktop and WireGuard
apt install --yes --no-install-recommends ubuntu-desktop wireguard resolvconf

# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install --yes ./google-chrome-stable_current_amd64.deb

# Restart
shutdown -r now
