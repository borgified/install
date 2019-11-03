#!/usr/bin/env bash

apt-get -y update
apt-get -y install slim git i3 openssh-server rxvt

# get minimal theme for login manager
git clone https://github.com/borgified/slim-theme-minimal /usr/share/slim/themes/slim-theme-minimal
sed -i 's/current_theme.*debian-softwaves/current_theme slim-theme-minimal/' /etc/slim.conf

# set default login manager
echo '/usr/bin/slim' > /etc/X11/default-display-manager

# use i3 as the default window manager
update-alternatives --install /usr/bin/x-session-manager x-session-manager /usr/bin/i3 60
update-alternatives --set x-terminal-emulator /usr/bin/rxvt

# set terminal customizations
echo -e 'Rxvt*background: black\nRxvt*foreground: white\nRxvt.scrollBar: false' >> ~/.Xdefaults

# no splash screen
#sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/GRUB_CMDLINE_LINUX_DEFAULT=""/' /etc/default/grub
#update-grub2
# cant update-grub2 with 19.10 with zfs on root
