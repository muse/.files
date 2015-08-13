# Author: Mirko van der Waal
# Email: <Mvdw at airmail dot cc>

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

xrdb -merge /home/mvdw/.Xresources

# export PS1="\[\e[00;34m\]\w\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;34m\]%\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"
export PS1="\[\033[38;5;12m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;12m\]λ\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export LANG="en_GB.UTF-8"
export EDITOR="vim"
export AWESOME="/home/mvdw/.config/awesome"
export BROWSER="firefox"

alias xmerge="xrdb -merge ~/.Xresources"
alias vps="ssh mvdw@128.199.46.104"
alias xip="curl icanhazip.com"
alias ls="ls -G --color=auto"
alias la="ls -aG --color=auto"
alias ix="curl -F 'f:1=<-' ix.io"

# Kill current shell (Leaves no trace of commands.)
alias kcs="kill -9 $$"		
# Ports sudo to understand aliases.
alias sudo="sudo "
