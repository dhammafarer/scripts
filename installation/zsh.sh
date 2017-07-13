sudo apt-get install zsh
sudo apt-get install git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

cd ~
rm ~/.aliases
ln -s ~/Dropbox/Config/zsh/.aliases ~
rm ~/.zshrc
ln -s ~/Dropbox/Config/zsh/.zshrc ~

sudo shutdown -r 0
