#!/bin/bash

sudo apt update
sudo apt upgrade -y

## initialize setup ##
script_path="$HOME/config/ubuntu/scripts"

# install default package
if [ -f "$script_path/default_package.sh" ]; then
    bash "$script_path/default_package.sh"
fi

# install google chrome
if [ -f "$script_path/google-chrome.sh" ]; then
    bash "$script_path/google-chrome.sh"
fi

# genarate ssh-key
if [ -f "$script_path/ssh_key_gen.sh" ]; then
    bash "$script_path/ssh_key_gen.sh"
fi

# disable beep sound
if [ -f "$script_path/disable_beep.sh" ]; then
    bash "$script_path/disable_beep.sh"
fi

## emacs setup ##
if [ -f "script_path/../emacs/setup_emacs_symlink.sh" ]; then
    bash "script_path/../emacs/setup_emacs_symlink.sh"
fi

## setting .bashrc ##
bashrc_path="$HOME/.bashrc"
config_path="$HOME/config/ubuntu/bash_config"

if [ ! -f "$HOME/.bashrc_origin" ]; then
    cp "$HOME/.bashrc" "$HOME/.bashrc_origin"
fi

echo -e "\n### import bashrc_config ###" >> "$bashrc_path"

# default setting
if [ -f "$config_path/default.bashrc_config" ]; then
    echo "source $config_path/default.bashrc_config" >> "$bashrc_path" 
fi

# dbus config
if [ -f "$config_path/dbus.bashrc_config" ]; then
    echo "source $config_path/dbus.bashrc_config" >> "$bashrc_path" 
fi

# show git branch
if [ -f "$config_path/git_branch.bashrc_config" ]; then
    echo "source $config_path/git_branch.bashrc_config" >> "$bashrc_path" 
fi

exec bash
