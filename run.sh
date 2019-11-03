#!/usr/bin/env bash

apt-get -y update
apt-get -y install slim git i3
git clone https://github.com/borgified/slim-theme-minimal /usr/share/slim/themes/slim-theme-minimal
sed -i 's/current_theme\s+debian-softwaves/current_theme slim-theme-minimal/' /etc/slim.conf
