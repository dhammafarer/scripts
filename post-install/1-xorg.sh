#!/usr/bin/env bash

echo
echo "INSTALLING XORG"
echo

PKGS=(
        'xorg'
        'xorg-server'
        'mesa'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
