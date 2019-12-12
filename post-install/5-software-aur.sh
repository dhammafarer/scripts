#!/usr/bin/env bash

echo
echo "INSTALLING AUR SOFTWARE"
echo

cd "${HOME}"

echo "CLONING: YAY"
git clone https://aur.archlinux.org/yay.git

cd ${HOME}/yay
makepkg -si
cd "${HOME}" && rm -rf ${HOME}/yay


PKGS=(

    # SYSTEM UTILITIES ----------------------------------------------------
    'jmtpfs'

    # TERMINAL UTILITIES --------------------------------------------------

    'rxvt-unicode-pixbuf'

    # UTILITIES -----------------------------------------------------------
    'dropbox'
    'google-chrome'
    'volnoti'
)



for PKG in "${PKGS[@]}"; do
    yay -S -i $PKG
done

echo
echo "Done!"
echo
