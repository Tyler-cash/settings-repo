#
# ~/.bashrc
#

# ansi color escape sequences
prompt_black='\[\e[30m\]'
prompt_red='\[\e[31m\]'
prompt_green='\[\e[32m\]'
prompt_yellow='\[\e[33m\]'
prompt_blue='\[\e[34m\]'
prompt_magenta='\[\e[35m\]'
prompt_cyan='\[\e[36m\]'
prompt_white='\[\e[37m\]'
prompt_default_color='\[\e[0m\]'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias ls='ls --color=auto'
PS1="$prompt_red[$prompt_cyan\u$prompt_red@$prompt_yellow\h$prompt_red:$prompt_white\W$prompt_red]$prompt_green\$(parse_git_branch)$prompt_red $ $prompt_white"

#Imports git autocomplete
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
