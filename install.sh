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

# Install VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code