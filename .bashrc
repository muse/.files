# Mirko van der Waal
# Set default shell values.
export LANG="en_GB.UTF-8"

# export PS1="\[\e[00;31m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;32m\]\h\[\e[0m\]\[\e[00;37m\] [\[\e[0m\]\[\e[00;33m\]\w\[\e[0m\]\[\e[00;37m\]] \[\e[0m\]"
export PS1="\[\e[00;34m\]\w\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;34m\]>>>\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

# Connect to the VPS, currently only have one.
alias vps="ssh mvdw@128.199.46.104"

# Merge the .Xresources file after we worked with it.
alias xmerge="xrdb -merge ~/.Xresources"

# Rebind ls to show colors and premissions.
alias ls="ls -aG --color=auto"

# Kill current shell (Leaves no trace of commands.)
alias kcs="kill -9 $$"		

# Ports sudo to understand aliases.
alias sudo="sudo "

# Get your outer IP address.
alias ip="curl icanhazip.com"

alias maze-smooth='Z=╱╲;for((;;)){ printf ${Z:RANDOM&1:1};sleep .01;}'
