#!/bin/bash

#updates system's information
sudo apt update

#Install needed depencies for config files in script
sudo apt install bash-completion

#REQUIRES bash-completion
cp user/.bashrc ~/
cp user/.gitconfig ~/
