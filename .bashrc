# Mirko van der Waal
# <Mvdw at airmail dot cc>

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# This is already set when `locale-gen` was ran.
# Exporting it again doesn't hurt.
export LANG="en_US.UTF-8"
# Other "very useful" exports.
export PS1="\[\e[00;34m\]\w\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;34m\]%\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

export EDITOR="vim"
export BROWSER="firefox"

# Quickly connect to my VPS server, 
# NOTE: Learn how to use a VPN.
alias vps="ssh mvdw@128.199.46.104"

# Merge the .Xresources file after we worked with it.
alias xmerge="xrdb -merge ~/.Xresources"

alias ls="ls -aG --color=auto"

alias ix="curl -F 'f:1=<-' ix.io"

# Kill current shell (Leaves no trace of commands.)
alias kcs="kill -9 $$"		

# Ports sudo to understand aliases.
alias sudo="sudo "

# Get your outer IP address.
alias ipaddr="curl icanhazip.com"
alias lpaddr="ifconfig"

