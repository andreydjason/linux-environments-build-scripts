# DONT EXECUTE THIS FILE DIRECTLY!
# Instead of this, copy what you whant and do it in a manually way,
# its more safe and clean, since you MUST KNOW what you're doing with these scripts :-)
#
### Good Linux distros to use:
# · Linux Mint KDE 13 (Maya)
# · OR Another of your option :-)
#
# This script install an Linux/Ubuntu for PHP/Ruby/Rails/MySQL/PostgreSQL development environment.
# Installs all dependencies, including:
# Node.js, Ruby, Rails, MySQL OR Percona Server 5.5 (uses MySQL), PostgreSQL, PHP5, PHPMyAdmin, Nginx OR Apache2, Memcached and some other thinks, see it below :-)

# Install Server and PHP/Ruby/Rails/MySQL/PostgreSQL Requirements
sudo apt-get install gksu make gcc build-essential curl openssl memcached zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev libc6-dev autoconf ncurses-dev automake libtool bison subversion libmysql-ruby libncurses5-dev ruby1.9.1-dev lynx lynx-cur python-software-properties rar unrar-free postgresql postgresql-server-dev-8.4

# For deep development/debug with Ruby/Rails
sudo apt-get install bison libreadline-dev libreadline6 libreadline6-dev libruby1.8 libruby1.9 libreadline-gplv2-dev

####### Curb libs (for use with Patron - Ruby)
# sudo apt-get install libcurl3 libcurl3-dbg libcurl3-gnutls libcurl3-nss libcurl4-openssl-dev
# not used yet(?) ### sudo apt-get install libcurl4-gnutls-dev libcurl4-nss-dev libcurl4-openssl-dev
#######

# Git, Upstart, Vim, Filezilla(why?), Glipper - these are utils
sudo apt-get install git-core upstart vim filezilla glipper

# Some (maybe) utils
sudo apt-get install usb-imagewriter usb-creator-gtk gparted mountmanager gdmap testdisk

# Install MS Fonts
sudo apt-get install msttcorefonts

# Install MySQL OR PErcona Server (below)
sudo apt-get install mysql-common mysql-client-5.5 mysql-server-5.5

# Percona Server (uses MySQL but with a significant gain in performance)
gpg --keyserver  hkp://keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
gpg -a --export CD2EFD2A | sudo apt-key add -
sudo add-apt-repository "deb http://repo.percona.com/apt precise main"
sudo apt-get update
sudo apt-get install percona-server-server-5.5 percona-server-client-5.5

# Install libs for Ruby/Mysql
sudo apt-get install libmysql-ruby libmysqlclient-dev

# Install Apache OR Install Nginx (see below)
sudo apt-get install apache2 apache2.2-common apache2-mpm-prefork apache2-utils apache2-prefork-dev

# Install Nginx, an web server very powerfull, flexible, with a very good performance, being an better option than Apache
sudo -s
nginx=stable # use nginx=development for latest development version
add-apt-repository ppa:nginx/$nginx
apt-get update
apt-get install nginx
exit

# Install PHP5 / PHPMyAdmin
sudo apt-get install php5 php5-mysql php5-common php5-cli phpmyadmin
# sudo libapache2-mod-php5 # If you've installed Apache2

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
gem install rmagick

#############
# Install Curb (cURL for Ruby)
# gem install curb -- --with-curl-lib=/usr/bin/curl
#############

# Install Rails Gems requirements
gem install bundler rails # Opt to install nodejs instead of therubyracer (for Rails >= 3.1), this least (therubyracer) is causing some problems in javascript compilations due to some problem that is talked by many developers around world through the web, fact.

# Install Node.js OR use Rock Solid Install for Node.js: http://apptob.org/
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

# Install NPM	
sudo apt-get install g++ curl libssl-dev apache2-utils
git clone git://github.com/ry/node.git
cd node
./configure
make
sudo make install
#If you want to compile Node C++ modules:
sudo apt-get install nodejs-dev

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

# Install Flash # TODO #HOW?

# Install VLC Media Player
sudo apt-get install vlc vlc-plugin-pulse mozilla-plugin-vlc libavcodec-extra-53
