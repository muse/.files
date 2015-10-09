#!/usr/bin/env bash
# Copyright (C) 2015 Mirko van der Waal <mvdw at airmail dot cc>
# Distributed under terms of the GPL2 license.

# Use a set of custom directory listing highlights.
[[ -r $HOME/.config/.ls ]] && eval `/usr/bin/dircolors -b $HOME/.config/.ls`

# Whenever using rxvt-unicode, load the correct color file for it.
[[ -r $HOME/.Xresources && $TERM =~ 'rxvt' ]] && xrdb -all $HOME/.Xresources

# Gems are placed in a rather odd location. Requiring us to extend our path for
# it. (Not that any sane person writes ruby to begin with, oh well).
export PATH=$PATH:/home/mvdw/.gem/ruby/2.2.0/bin

# Load all the .shell files and execute (source) them.
for file in $HOME/.shell/*; do
    source $file || . $file
done
