# DONT EXECUTE THIS FILE DIRECTLY!
# Instead of this, copy what you whant and do it in a manually way,
# its more safe and clean, since you MUST KNOW what you're doing with these scripts :-)
#
### Good Linux distros to use:
# - Linux Mint KDE/META/
# - Netrunner | KDE GNU/Linux
# - Another of your option :-)
#
# This script install an Linux/Ubuntu for PHP/Ruby/Rails/MySQL/PostgreSQL development environment.
# Installs all dependencies, including:
# Ruby, Rails, Percona Server 5.5 (uses MySQL), PostgreSQL, PHP5, PHPMyAdmin, Apache2 and some other thinks, see it above.

# Install Server and PHP/Ruby/Rails/MySQL/PostgreSQL Requirements
sudo apt-get install make gcc build-essential curl openssl zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion libmysql-ruby libncurses5-dev ruby1.8-dev ruby1.9.1-dev lynx lynx-cur python-software-properties rar unrar-free postgresql postgresql-server-dev-8.4

# For deep development/debug with Ruby/Rails
sudo apt-get install bison libreadline-dev libreadline6 libreadline6-dev libruby1.8 libruby1.9 libreadline-gplv2-dev git-core

####### Curb libs (for use with Ruby)
# sudo apt-get install libcurl3 libcurl3-dbg libcurl3-gnutls libcurl3-nss
# sudo apt-get install libcurl4-gnutls-dev libcurl4-nss-dev libcurl4-openssl-dev
#######

# Git, Upstart, Vim, Filezilla(why?), Glipper - these are utils
sudo apt-get install git-core upstart vim filezilla glipper

# Some (maybe)future utils
sudo apt-get install usb-imagewriter usb-creator-gtk gparted

# Percona Server (uses MySQL but with a significant gain in performance)
gpg --keyserver  hkp://keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
sudo add-apt-repository "deb http://repo.percona.com/apt lenny main"
sudo add-apt-repository "deb-src http://repo.percona.com/apt lenny main"
sudo apt-get update
sudo apt-get install percona-server-server-5.5 libmysqlclient-dev libaio-dev

# Install Apache
sudo apt-get install apache2 apache2.2-common apache2-mpm-prefork apache2-utils apache2-prefork-dev

# Install PHP5 / PHPMyAdmin
sudo apt-get install php5 libapache2-mod-php5 php5-mysql php5-common php5-cli phpmyadmin

##############################################################################
# Ruby Version to install
# There are two options, in my opinion Rbenv is doing the job best than RVM. Why I switched to Rbenv+Ruby_Build ? RVM whas (almost always crashing in some way, thats turned in a headache for me, and the best choice was to move to ruby_build + rbenv)
# BTW you can chose to install RVM
# Both of them has (almost cases) easy steps to install, dont whant to REPEAT MYSELF by creating new scripts, we only need to search a bit and find how easy is to install one or another, at least this is good :-)b-dir=$rvm_usr_path --with-openssl-dir=$rvm_usr_path
# Another option is to compile Ruby and RubyGems for local use manually
##############################################################################

#Install Imagemagick/Rmagick
sudo apt-get install imagemagick libmagick*-dev
sudo apt-get install libmagickwand-dev

gem install rmagick --no-ri --no-rdoc

#############
# Install Curb (cURL for Ruby)
# gem install curb -- --with-curl-lib=/usr/bin/curl
#############

# Install Rails Gems requirements
gem install bundler therubyracer rails

# Install Node.js
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

#############
# Install Node (This IS NOT Node.js)
git clone --depth 1 git://github.com/joyent/node.git # or git clone git://github.com/joyent/node.git if you want to checkout a stable tag
cd node
git checkout v0.4.12
./configure
make -j2
sudo make install
#############

# Install NPM #comofaz?
sudo curl http://npmjs.org/install.sh | sudo sh

# NPM Install Express
npm install express

# NPM Install Mongoose
npm install mongoose

# => I'm using Sublime Text 2 [http://www.sublimetext.com/], with the Package Manager, this can be like the TextMate for Mac, both are amazing text-editors

# OR install Gedit Plugins and GMate
# sudo apt-get install gedit-plugins
# sudo apt-add-repository ppa:ubuntu-on-rails/ppa
# sudo apt-get update
# sudo apt-get install gedit-gmate

# Install Flash # TODO

# Install VLC Media Player
sudo apt-get install vlc vlc-plugin-pulse mozilla-plugin-vlc libavcodec-extra-52
