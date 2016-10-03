#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias ls='ls --color=auto'
export 
PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[34m\]\h\[\e[m\]:\[\e[36m\]\W\[\e[m\]\[\e[31m\]]\[\e[32m\]\$(parse_git_branch) \[\e[35m\]\$\[\e[m\] "

#Imports git autocomplete
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
