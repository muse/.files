# Maintainer: Mirko van der Waal <mvdw at airmail dot cc>
# We do everything from the .profile file. (.bashrc -> .profile -> .shell/*)

[[ -r ~/.profile ]] && source ~/.profile

# On modern unices, there's an added complication related to ~/.profile. If you
# log in in a graphical environment (that is, if the program where you type your
# password is running in graphics mode), you don't automatically get a login
# shell that reads ~/.profile. Depending on the graphical login program,
# on the window manager or desktop environment you run afterwards, and on how
# your distribution configured these programs, your ~/.profile may or may not
# be read. If it's not, there's usually another place where you can define
# environment variables and programs to launch when you log in, but there is
# unfortunately no standard location.

