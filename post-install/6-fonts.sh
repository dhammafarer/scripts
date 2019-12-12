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

echo
echo "Done!"
echo
