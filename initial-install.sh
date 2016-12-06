#!/bin/bash

# Add option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc

#updates system's information
sudo apt update

#Install needed depencies for config files in script
sudo apt install bash-completion

#REQUIRES bash-completion
cp user/.bashrc ~/
cp user/.gitconfig ~/
cp user/.profile ~/

#Enables case insensitive auto complete
# If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi
