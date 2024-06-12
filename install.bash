#!/usr/bin/env bash

if [ ! -d ~/.ssh ]; then
	echo "[!] No SSH directory found, this scripts clones using SSH"
	exit 1
fi

cd ~/ || echo "[!] Failed to cd ~/"
mkdir .tmp-downloads
cd .tmp-downloads || echo "[+] Failed to cd ~/.tmp-downloads"

git clone https://aur.archlinux.org/yay.git
cd yay || echo "[!] Failed to cd yay"
makepkg -si
echo "[+] Moving to /opt"
sudo mv /usr/bin/yay /opt/
echo "[+] Making symlink"
sudo ln -s /opt/yay /usr/bin/yay

sudo pacman -Sy - < <(curl https://wsadev01.github.io/blog/native.txt)
yay -Sy - < <(curl https://wsadev01.github.io/blog/foreign.txt)

cd ~/ || echo "[!] Failed to cd ~/"

git clone git@github.com:wsadev01/dotfiles.git .

sudo cp .globdotfiles/* /

cd ~/
rm -rf ~/.tmp-downloads

