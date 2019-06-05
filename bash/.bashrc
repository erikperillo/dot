#
# ~/.bashrc
#

#if not running interactively, don't do anything
[[ $- != *i* ]] && return

#prompt for bash
PS1="\W| "

#append my bin to path
export PATH=$PATH:$(pwd)/bin

export TERM="xterm-256color"

#aliases
#colored output for ls
alias ls='ls --color=auto'
#proper colors for tmux
alias tmux="tmux -2"
#avoid catastrophes
alias rm="rm -I"
#:^)
alias emacs="vim"
#alias vim="nvim"
