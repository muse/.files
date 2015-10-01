# Author: Mirko van der Waal
# Email: <Mvdw at airmail dot cc>
# 
# Configuration file for dircolors, a utility to help you set the
# LS_COLORS environment variable used by GNU ls with the --color option.
# Copyright (C) 1996-2015 Free Software Foundation, Inc.
# Copying and distribution of this file, with or without modification,
# are permitted provided the copyright notice and this notice are preserved.
# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the
# slackware version of dircolors) are recognized but ignored.
# Below, there should be one TERM entry for each termtype that is colorizable

TERM rxvt-unicode-256color
TERM screen-256color-bce
TERM rxvt-cygwin-native
TERM screen-256color
TERM rxvt-unicode256
TERM xterm-256color
TERM putty-256color
TERM mach-gnu-color
TERM gnome-256color
TERM xterm-termite
TERM xterm-88color
TERM xterm-16color
TERM rxvt-256color
TERM xterm-debian
TERM screen.linux
TERM screen.Eterm
TERM rxvt-unicode
TERM xterm-color
TERM st-256color
TERM screen.rxvt
TERM rxvt-cygwin
TERM eterm-color
TERM color-xterm
TERM terminator
TERM screen-bce
TERM mach-color
TERM con132x60
TERM con132x43
TERM con132x30
TERM con132x25
TERM screen-w
TERM con80x60
TERM con80x50
TERM con80x43
TERM con80x30
TERM con80x28
TERM con80x25
TERM linux-c
TERM konsole
TERM jfbterm
TERM console
TERM screen
TERM mlterm
TERM dtterm
TERM cygwin
TERM cons25
TERM xterm
TERM vt100
TERM putty
TERM linux
TERM kterm
TERM gnome
TERM Eterm
TERM rxvt
TERM hurd
TERM ansi
TERM st

# Below are the color init strings for the basic file types. A color init
# string consists of one or more of the following numeric codes:
# Attribute codes:
# 00 = None 
# 01 = Bold 
# 04 = Underscore 
# 05 = Blink 
# 07 = Reverse 
# 08 = Concealed
#
# Text color codes:
# 30 = Black 
# 31 = Red 
# 32 = Green 
# 33 = Yellow 
# 34 = Blue 
# 35 = Magenta 
# 36 = Cyan 
# 37 = White
# 
# Background color codes:
# 40 = Black 
# 41 = Red 
# 42 = Green 
# 43 = Yellow 
# 44 = Blue 
# 45 = Magenta 
# 46 = Cyan 
# 47 = White

# Dir that is sticky and other-writable (+t, o+w).
STICKY_OTHER_WRITABLE 30;42 
# Symlink to nonexistent file, or non-stat'able file ...
ORPHAN 40;31;01 
# Directory with the sticky bit set (+t) and not other-writable.
STICKY 37;44 
# Directory that is other-writable (o+w) and not sticky.
OTHER_WRITABLE 34;42
LINK 01;36 
# Numerical value, the color is as for the file pointed to.)
# Regular file with more than one link.
MULTIHARDLINK 00 
MISSING 00 
# Regular file: use no color at all
# FILE 00 
# File that is setuid (u+s)
SETUID 37;41 
# File that is setgid (g+s)
SETGID 30;43 
# File with capability
CAPABILITY 30;41 
# Character device driver
CHR 40;33;01 
# Block device driver
BLK 40;33;01 
# Reset to "normal" color
RESET 0 
# No color code at all
# NORMAL 00 
# Socket
SOCK 01;35 
EXEC 01;32
# Pipe
FIFO 40;33 
# Door
DOOR 01;35 
# Directory
DIR 01;34 

# Archives or compressed (bright red)
.tar 01;31
.tgz 01;31
.arc 01;31
.arj 01;31
.taz 01;31
.lha 01;31
.lz4 01;31
.lzh 01;31
.lzma 01;31
.tlz 01;31
.txz 01;31
.tzo 01;31
.t7z 01;31
.zip 01;31
.z 01;31
.Z 01;31
.dz 01;31
.gz 01;31
.lrz 01;31
.lz 01;31
.lzo 01;31
.xz 01;31
.bz2 01;31
.bz 01;31
.tbz 01;31
.tbz2 01;31
.tz 01;31
.deb 01;31
.rpm 01;31
.jar 01;31
.war 01;31
.ear 01;31
.sar 01;31
.rar 01;31
.alz 01;31
.ace 01;31
.zoo 01;31
.cpio 01;31
.7z 01;31
.rz 01;31
.cab 01;31

# Image formats
.jpg 01;35
.jpeg 01;35
.gif 01;35
.bmp 01;35
.pbm 01;35
.pgm 01;35
.ppm 01;35
.tga 01;35
.xbm 01;35
.xpm 01;35
.tif 01;35
.tiff 01;35
.png 01;35
.svg 01;35
.svgz 01;35
.mng 01;35
.pcx 01;35
.mov 01;35
.mpg 01;35
.mpeg 01;35
.m2v 01;35
.mkv 01;35
.webm 01;35
.ogm 01;35
.mp4 01;35
.m4v 01;35
.mp4v 01;35
.vob 01;35
.qt 01;35
.nuv 01;35
.wmv 01;35
.asf 01;35
.rm 01;35
.rmvb 01;35
.flc 01;35
.avi 01;35
.fli 01;35
.flv 01;35
.gl 01;35
.dl 01;35
.xcf 01;35
.xwd 01;35
.yuv 01;35
.cgm 01;35
.emf 01;35

# http://wiki.xiph.org/index.php/MIME_Types_and_File_Extensions
.ogv 01;35
.ogx 01;35

# Audio formats
.aac 00;36
.au 00;36
.flac 00;36
.m4a 00;36
.mid 00;36
.midi 00;36
.mka 00;36
.mp3 00;36
.mpc 00;36
.ogg 00;36
.ra 00;36
.wav 00;36

# http://wiki.xiph.org/index.php/MIME_Types_and_File_Extensions
.oga 00;36
.opus 00;36
.spx 00;36
.xspf 00;36
