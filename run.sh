#!/usr/bin/env bash

apt-get -y update
apt-get -y install slim git i3

# minimal login manager
git clone https://github.com/borgified/slim-theme-minimal /usr/share/slim/themes/slim-theme-minimal
sed -i 's/current_theme.*debian-softwaves/current_theme slim-theme-minimal/' /etc/slim.conf

# no splash screen
#sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/GRUB_CMDLINE_LINUX_DEFAULT=""/' /etc/default/grub
#update-grub2
# cant update-grub2 with 19.10 with zfs on root
