#!/usr/bin/env bash
sudo dnf upgrade

# Install snap
sudo dnf install snapd -y
sudo ln -s /var/lib/snapd/snap /snap

# Install Flat Remix theme
sudo dnf copr enable daniruiz/flat-remix
sudo dnf install flat-remix-gnome flat-remix-icon-theme flat-remix-gnome gnome-tweaks -y

# Install Node.JS and NPM
sudo npm install nodejs -y
