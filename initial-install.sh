#!/bin/bash

#updates system's information
sudo pacman -Syu

#Install needed depencies for config files in script
sudo pacman -S bash-completion

#REQUIRES bash-completion
cp .bashrc ~/
