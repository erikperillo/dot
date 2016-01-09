#
# ~/.bashrc
#

#git update
#add files, commit with message and push to master branch on repo of current dir
gu()
{
	local commit_message=$1
	git add . && git commit -m "$commit_message" && git push origin master
}

#removes alias for octave-cli, runs octave with gui and then alias it again
run_octave_gui()
{
	unalias octave
	octave
	alias octave="octave-cli"
}

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
#start octave without gui by default
alias octave="octave-cli"
alias octave-gui="run_octave_gui"
