#!/bin/bash

echo "Setting up Emacs configuration symlink..."

if [ -e "$HOME/.emacs.d/init.el" ]; then
    if [ -L "$HOME/.emacs.d/init.el" ]; then
	rm "$HOME/.emacs.d/init.el" # backupがある前提
    else
        mv "$HOME/.emacs.d/init.el" "$HOME/.emacs.d/init.el.bak"
    fi
else
    echo "No existing init.el found, proceeding with symlink creation"
fi

# create symbolic link
echo "Creating symbolic link to ~/config/ubuntu/emacs/init.el"
ln -s "$HOME/config/ubuntu/emacs/init.el" "$HOME/.emacs.d/init.el"

# check
echo "Emacs configuration symlink setup complete!"
