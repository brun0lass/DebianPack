#!/bin/bash

#Create dev
mkdir dev

#Adding Gnome-Shell-Extensions
sudo apt install gnome-shell-extension-prefs

#Adding makefile
sudo apt install make

#Adding GH from git
sudo apt install gitsome

#Adding NPM and Yarn
sudo apt install npm
sudo npm install --global yarn

#Adding Gnome Shell
sudo apt install gnome-session
sudo apt install gnome-maps gnome-weather polari gnome-documents gnome-photos gnome-music
sudo apt install gnome-tweaks
sudo apt install gnome-shell-extensions
sudo apt install chrome-gnome-shell

#OS Customize
sudo apt install gnome-tweak-tool

#Adding SASS
sudo npm install -g sass
sudo apt install sassc

#Adding Gettext
sudo apt-get update -y
sudo apt-get install -y gettext

#Chrome Install
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm -Rf google-chrome-stable_current_amd64.deb

#Dbeaver Install
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install dbeaver-ce

#Paint Install
sudo add-apt-repository ppa:achadwick/mypaint-testing
sudo apt-get update
sudo apt-get install mypaint mypaint-data-extras

#Teams Install
wget "https://teams.microsoft.com/downloads/desktopurl?env=production&plat=linux&arch=x64&download=true&linuxArchiveType=deb" -O teams.deb
sudo apt install ./teams.deb
rm -Rf teams.deb 

#
#Not Working
#Spotify Install
# curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
# echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
# sudo apt-get update && sudo apt-get install spotify-client

#Config for dash to dock
gnome-extensions disable ubuntu-dock@ubuntu.com

#Install Dconf
sudo apt install dconf-editor

### Not Working
#Install dash to dock
# cd ~/.local/share/gnome-shell/extensions/
# sudo git clone https://github.com/micheleg/dash-to-dock.git
# cd dash-to-dock
# sudo make
# sudo make install
# sudo make
# sudo make zip-file

#Install Filezilla
sudo add-apt-repository ppa:sicklylife/filezilla
sudo apt-get update
sudo apt-get install filezilla

#Adding tree
sudo apt install tree

#Discord install
sudo snap install discord

#VsCode install
sudo apt-get install snapd snapd-xdg-open
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo apt-get update
sudo apt-get install code

#### ------------- Laravel Session ---------------
#Composer Install
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
export PATH=$PATH:/usr/local/bin/composer

#Laravel Install
composer global require "laravel/installer=~1.1"
export PATH=$PATH:~/.config/composer/vendor/laravel/installer

##### ----------------- Finish Laravel Session ------------------

##### ----------------- Java SpringBoot Session ------------------
# sudo add-apt-repository ppa:linuxuprising/java
# sudo apt update

