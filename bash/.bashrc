#
# ~/.bashrc
#

#if not running interactively, don't do anything
[[ $- != *i* ]] && return

#prompt for bash
PS1="\W| "

#append my bin to path
export PATH=$PATH:$(pwd)/bin

#aliases
#colored output for ls
alias ls='ls --color=auto'
#proper colors for tmux
alias tmux="tmux -2"
#proper python version :^)
alias python="python2.7"
