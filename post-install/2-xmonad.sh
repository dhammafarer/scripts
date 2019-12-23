#!/usr/bin/env bash

echo
echo "INSTALLING XMONAD"
echo

PKGS=(
        'xmonad'
        'xmonad-contrib'
        'xmobar'
        'stalonetray'
        'lightdm'
        'lightdm-gtk-greeter'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo "CLONING CONFIGURATION"
git clone https://github.com/dhammafarer/xmonad-config ~/.xmonad
xmonad --recompile

echo
echo "Done!"
echo
