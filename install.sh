#!/usr/bin/env bash
sudo dnf upgrade

# Configure RPM Fusion
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# Install snap
sudo dnf install snapd -y
sudo ln -s /var/lib/snapd/snap /snap

# Install Gnome Tweaks & Flat Remix theme
sudo dnf install gnome-tweaks
sudo dnf install flat-remix-theme

# Install C/C++ related tools
sudo dnf install gcc gcc-c++ clang autoconf automake cmake csbuild -y

# Install Node.JS and NPM
sudo dnf install nodejs -y

# Install VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code -y

# Install Brave Browser
sudo dnf install dnf-plugins-core -y
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y
