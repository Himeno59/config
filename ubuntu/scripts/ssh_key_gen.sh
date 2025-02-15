#!/bin/bash

if [ ! -d "$HOME/.ssh" ]; then
    mkdir -p "$HOME/.ssh"
    chmod 700 "$HOME/.ssh"
fi

if [ ! -f "$HOME/.ssh/id_rsa" ]; then
    ssh-keygen -t rsa -b 2048 -f "$HOME/.ssh/id_rsa" -N ""
    echo "SSH key has been generated at $HOME/.ssh/id_rsa"
else
    echo "SSH key already exists at $HOME/.ssh/id_rsa"
fi
