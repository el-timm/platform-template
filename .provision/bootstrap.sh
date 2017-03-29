sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install nodejs
#debian decided to call the binary nodejs not node, which is the alias bower and gulp expect
sudo ln -s /usr/bin/nodejs /usr/bin/node

sudo apt-get -y install npm
sudo npm install -g bower
sudo npm install -g --save-dev gulp
sudo npm install -g --save-dev gulp-load-plugins browser-sync main-bower-files run-sequence del

# nginx
sudo apt-get -y install nginx
sudo service nginx start

# set up nginx server
sudo cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/sites-available/nginx.conf
sudo chmod 644 /etc/nginx/sites-available/nginx.conf
sudo ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf
sudo rm /etc/nginx/sites-enabled/default
sudo service nginx restart

updatedb