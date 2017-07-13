sudo apt-get install pidgin-indicator
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/jgeboski/xUbuntu_$(lsb_release -rs)/ /' >> /etc/apt/sources.list.d/jgeboski.list"
cd /tmp && wget  http://download.opensuse.org/repositories/home:/jgeboski/xUbuntu_$(lsb_release -rs)/Release.key
sudo apt-key add - < Release.key
sudo apt-get update
sudo apt-get install purple-facebook

cd /tmp
wget https://github.com/Hernou/pidgin-EAP/archive/master.tar.gz
tar -xvf master.tar.gz
cp -rf pidgin-EAP-master/{.fonts,.purple} ~
