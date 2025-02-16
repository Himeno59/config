#!/bin/bash

# 全部必要かは不明
packages=("libssl-dev" "zlib1g-dev" "libbz2-dev" "libreadline-dev" "libsqlite3-dev" "wget" "curl" "llvm" "libncursesw5-dev" "xz-utils" "tk-dev" "libxml2-dev" "libxmlsec1-dev" "libffi-dev" "liblzma-dev" "libxcb-icccm4" "libxcb-icccm4-dev" "libxcb1" "libxcb-xinerama0" "libxcb-util1" "libxcb-image0" "libxcb-keysyms1" "libxcb-shape0" "libxcb-render-util0" "libxkbcommon-x11-0" "libxcb-xkb1")

for pkg in "${packages[@]}"; do
    sudo apt install -y "$pkg" || echo "Failed to install $pkg"
done

# curl https://pyenv.run | bash

# PYENV_CONFIG='
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"
# eval "$(pyenv init -)"
# '

# if ! grep -q 'export PYENV_ROOT="\$HOME/.pyenv"' ~/.bashrc; then
#     echo "# for pyenv" >> ~/.bashrc
#     echo "$PYENV_CONFIG" >> ~/.bashrc
#     echo "Pyenv settings added to ~/.bashrc"
# else
#     echo "Pyenv settings already exist in ~/.bashrc"
# fi
