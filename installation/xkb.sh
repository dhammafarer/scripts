cd /usr/share/X11/xkb
sudo mv rules/evdev.xml rules/evdev.xml.backup && sudo cp ~/Dropbox/Config/xkb/rules/evdev.xml rules/
sudo cp ~/Dropbox/Config/xkb/symbols/pw symbols/pw

sudo rm -rf /var/lib/xkb/*
