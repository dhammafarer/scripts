#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # TERMINAL UTILITIES --------------------------------------------------

    'curl'
    'elinks'
    'feh'
    'atool'
    'htop'
    'hardinfo'
    'htop'
    'neofetch'
    'ntp'
    'openssh'
    'pass'
    'powerline-vim'
    'ranger'
    'rsync'
    'unrar'
    'unzip'
    'wget'
    'mate-terminal'
    'zip'
    'zsh'
    'zsh-completions'

    # DISK UTILITIES ------------------------------------------------------

    'autofs'
    'usbutils'

    # GENERAL UTILITIES ---------------------------------------------------

    'fzf'
    'goldendict'
    'translate-shell'

    # DEVELOPMENT ---------------------------------------------------------

    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'gcc'                   # C/C++ compiler
    'meld'                  # File/directory comparison
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'python'                # Scripting language

    # WEB TOOLS -----------------------------------------------------------

    'chromium'              # Web browser
    'firefox'               # Web browser

    # COMMUNICATIONS ------------------------------------------------------

    'pidgin'
    'purple-facebook'

    # MEDIA ---------------------------------------------------------------

    'vlc'

    # GRAPHICS AND DESIGN -------------------------------------------------

    'blender'
    'gpick'
    'eom'
    'imagemagick'

    # LANGUAGE
    'ibus'
    'ibus-libpinyin'

    # PRODUCTIVITY --------------------------------------------------------

    'libreoffice-fresh'
    'mupdf'

    # THEMES -------------------------------------------------------------
    'gtk2'
    'gtk3'
    'arc-icon-theme'
    'arc-gtk-theme'

    # VIRTUALIZATION ------------------------------------------------------

    'virtualbox'
    'virtualbox-host-modules-arch'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
