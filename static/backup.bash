#!/usr/bin/env bash

cd ~/ || echo "[!] Can't CD to ~/"

echo "[+] Copying /etc/X11/xinit/xinitrc"
cp /etc/X11/xinit/xinitrc ~/.globdotfiles/etc/X11/xinit/xinitrc

echo "[+] Copying /etc/lightdm/lightdm.conf"
cp /etc/lightdm/lightdm.conf ~/.globdotfiles/etc/lightdm/lightdm.conf

echo "[+] Copying /etc/lightdm/slick-greeter.conf"
cp /etc/lightdm/slick-greeter.conf .globdotfiles/etc/lightdm/slick-greeter.conf

echo "[+] Copying /usr/share/backgrounds/greeter-background"
cp /usr/share/backgrounds/greeter-background.jpg ~/.globdotfiles/usr/share/backgrounds/greeter-background.jpg

echo "[+] Copying /etc/vconsole.conf"
cp /etc/vconsole.conf ~/.globdotfiles/etc/vconsole.conf

mkdir -p ~/.globdotfiles/etc/X11/xinit/
mkdir -p ~/.globdotfiles/etc/lightdm/

echo "[+] Backup of ~/Documents, ~/Pictures, ~/Videos, ~/Music, and ~/unorganized
tar -czvf backup-$(date +"%Y_%m_%d").tar.gz Documents/*  Pictures/*  Videos/*  Music/* unorganized/
