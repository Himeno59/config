#!/bin/bash

if [ ! -d "$HOME/.ssh" ]; then
    mkdir -p "$HOME/.ssh"
    chmod 700 "$HOME/.ssh"
fi

cd $HOME/.ssh
ssh-keygen -t rsa -b 2048 -f "$HOME/.ssh/id_rsa" -N "" <<< $'\n\n\n'
