# Project Information

Project Currently uses [ScotchBox](https://box.scotch.io/), which is a pre-built VM with all the LAMP* stuff you'll ever want.   We did shut down apache in favor of nginx, however. 

For building the project, we rely on:

* [Bower](https://bower.io) for JavaScript package management
* [Gulp](http://gulpjs.com/) for Task automation (lint, condensation, minification, etc)

The Vagrantfile and provisioning script (bootstrap.sh) really does everything you need to get goin'

```bash
vagrant up
```

To get the code built deployed locally in the VM:

```bash
vagrant ssh
cd /vagrant
bower install
gulp build
```

Access the local website at:
http://192.168.33.10


## Building outside of Vagrant

TBD, but we know we'll need to install:
* nodejs, npm, bower and gulp
* gulp plugins: gulp-load-plugins browser-sync main-bower-files run-sequence del
* nginx
