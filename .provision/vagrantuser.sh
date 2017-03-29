# install gulp and required plugins
# Gulp needs some packages installed by the non privileged user in our working directory.
cd /vagrant
npm install --save-dev gulp-load-plugins browser-sync main-bower-files run-sequence del
npm update
