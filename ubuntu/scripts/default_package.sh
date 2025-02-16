#!/bin/bash

packages=("emacs" "nautilus" "git" "make" "ssh" "build-essential" "cmake" "byobu" "x11-apps")

for pkg in "${packages[@]}"; do
    sudo apt install -y "$pkg" || echo "Failed to install $pkg"
done
