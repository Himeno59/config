#!/bin/bash

sudo cp /etc/inputrc /etc/inputrc.bak
sudo sed -i 's/^# set bell-style none/set bell-style none/' /etc/inputrc
exec "$SHELL"
