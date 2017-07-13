#Enable sources, PPAs and update sources:
sudo sed 's/# deb/deb/' -i /etc/apt/sources.list

sudo add-apt-repository -y ppa:videolan/stable-daily
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo add-apt-repository -y ppa:diodon-team/stable
sudo apt-add-repository -y ppa:numix/ppa

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade


#Install software:
sudo apt-get install -y vlc guake unity-tweak-tool compizconfig-settings-manager synaptic inkscape gimp gimp-data gimp-plugin-registry gimp-data-extras rar unzip git rake virtualbox virtualbox-dkms goldendict diodon unity-scope-diodon syspeek numix-gtk-theme numix-icon-theme numix-icon-theme-circle pass pidgin redshift redshift-gtk gpick

# Ubuntu restricted extras:
sudo apt-get install -y ubuntu-restricted-extras

# Disable shopping suggestions
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"

# Enable recursive search
gsettings set org.gnome.nautilus.preferences enable-interactive-search false

# Symlinks:
ln -s ~/Dropbox/.fonts ~
