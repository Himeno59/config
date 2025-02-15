#!/bin/bash

sudo apt update
sudo apt upgrade

## initialize setup ##
script_path="$HOME/config/ubuntu/scripts"

# install default package
if [ -f "$script_path/default_package.sh" ]; then
    source $script_path/default_package.sh
fi

# install google chrome
if [ -f "$script_path/google-chrome.sh" ]; then
    source $script_path/google-chrome.sh
fi

# genarate ssh-key
if [ -f "$script_path/ssh_key_gen.sh" ]; then
    source $script_path/ssh_key_gen.sh
fi

# disable beep sound
if [ -f "$script_path/disable_beep.sh" ]; then
    source $script_path/disable_beep.sh
fi

## setting .bashrc ##
bashrc_path="$HOME/.bashrc"
config_path="$HOME/config/ubuntu/bash_config"
cp $HOME/.bashrc $HOME/.bashrc_origin
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

source $HOME/.bashrc
