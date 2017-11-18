#!/bin/bash

# Add option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc

#Updates timezone and reconfigures clock
ln -fs /usr/share/zoneinfo/Australia/Sydney /etc/localtime
dpkg-reconfigure -f noninteractive tzdata

#Install needed depencies for config files in script
sudo apt install bash-completion
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

#REQUIRES bash-completion
cp user/.bashrc ~/
cp user/.gitconfig ~/
cp user/.profile ~/

#Enables case insensitive auto complete
# If ~./inputrc doesn\'t exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi
