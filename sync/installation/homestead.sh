# Make sure that vagrant is install
if command -v vagrant 2>/dev/null; then
    #vagrant box add laravel/homestead

    cd ~
    git clone https://github.com/laravel/homestead.git Homestead

    cd ~/Homestead
    bash init.sh

    mkdir ~/Code

    composer global require "laravel/installer"
else
    echo "The latest version of Vagrant is required.  Aborting."; exit 1;
fi
