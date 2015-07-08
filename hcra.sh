#!/bin/bash
# Author: Mirko van der Waal
# Email: <mvdw at airmail dot cc>
# Description: Installer script doing most of the nasty work. 
# 
# Q: How many Unix hacks does it take to change a light bulb?
# A: Let's see, can you use a shell script for that or does it need a C program?
# 
# The following script will take care of:
#   * Downloading and builing yaourt and package-query
#
#   * Install the default set of currently used applications
#
#   * Apply the hostname when not set.
# 
#   * Move the all the files from the specified github repository to their
#     according path or home directory when none specified.
# 
#   * Merge, reload, sync and clean up.
# 

OFFICIAL_PACKAGES='
    xorg-apps xorg-server xorg-server-utils xorg-xinit xterm ttf-liberation 
    xf86-video-intel xf86-video-vesa xf86-input-synaptics vim networkmanager 
	openssh pass rxvt-unicode firefox thunderbird mpv network-manager-applet
	gnome-font-viewer gnome-alsamixer acpi fortune-mod
'

AUR_PACKAGES=(
    https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz
    https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz
)

HOSTNAME='hcra'
GITHUB='/Imakethings/.files'

# Apply the hostname.
[[ -f /etc/hostname/ ]] && \
    [[ $(cat /etc/hostname) == $HOSTNAME ]] && \
        sudo echo $HOSTNAME >> /etc/hostname

# Install all the AUR packages.
for PACKAGE in "${AUR_PACKAGES[@]}"; do
    # Obtain the name and the tar.gz
    TARGZ=$(echo $PACKAGE | sed 's/\// /img' | awk '{print $(NF)}')
    NAME=$(echo $TARGZ | sed 's/\./ /img' | awk '{print $1}')

    curl -o /tmp/$TARGZ $PACKAGE
    tar -xzf /tmp/$TARGZ -C /tmp
    cd /tmp/$NAME && makepkg -sicf
    rm -rf /tmp/$NAME /tmp/$TARGZ
done

# Install the official packages.
sudo pacman -S $(echo $OFFICIAL_PACKAGES)


if [[ -f /usr/bin/git ]]; then
    git clone 'https://github.com'$GITHUB /tmp
    ls
fi 

# Not actually cleaning up but this is what the cool kids do r-right?
echo "Finished, cleaning up!"; sleep 3; clear; exit 0
