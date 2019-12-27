#!/usr/bin/env bash

echo
echo "INSTALLING FONTS"
echo

PKGS=(
        'ttf-ubuntu-font-family'
        'ttf-dejavu'
        'ttf-fira-code'
        'ttf-fira-mono'
        'ttf-fira-sans'
        'adobe-source-han-sans-cn-fonts'
        'adobe-source-han-serif-cn-fonts'
        'adobe-source-han-sans-tw-fonts'
        'adobe-source-han-serif-tw-fonts'
        'ttf-font-awesome'
        'powerline-fonts'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo "SETTING UP FONTS"
sudo ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d

sudo cp ./files/etc-fonts-local.conf /etc/fonts/local.conf
sudo vim /etc/profile.d/freetype2.sh

echo
echo "Done!"
echo
