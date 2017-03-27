sudo apt-get -y update
sudo apt-get -y upgrade

# install gulp and required plugins
sudo npm install --save-dev gulp
sudo npm install --save-dev gulp-load-plugins browser-sync main-bower-files run-sequence del
sudo npm update

# abandon apache
sudo service apache2 stop

# nginx
sudo apt-get -y install nginx
sudo service nginx start

# set up nginx server
sudo cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/sites-available/site.conf
sudo chmod 644 /etc/nginx/sites-available/site.conf
sudo ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
sudo service nginx restart

# clean /var/www
sudo rm -Rf /var/www

# symlink /var/www => /vagrant/src
ln -s /vagrant/serve /var/www


updatedb