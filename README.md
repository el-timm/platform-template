# Project Information

For building the project, we rely on:

* [NGINX](https://www.nginx.com) for the webserver
* [Node.js](https://nodejs.org) and [npm](https://www.npmjs.com) for package management of the build tools
    * [Bower](https://bower.io) for JavaScript package management
    * [Gulp](http://gulpjs.com/) for Task automation (lint, condensation, minification, etc)


## Project Notes

The template is built to include all of the JavaScript dependencies required by the SPIN template.  Many of these libraries
are for demonstration purposes, and likely are not necessary for your deployment.  You'll want to augment the JS included into your project accordingly


## Host Configuration

Configure a local hostname in /etc/hosts to match the private IP of the VM.  You can change the IP in the Vagrantfile

```bash
sudo vi /etc/hosts
192.168.33.10    platform.local.com
```

## Provisioning the VM

The Vagrantfile and provisioning scripts (.provision/*.sh) really does everything you need to get goin'

```bash
vagrant up
```

Gulp needs some packages installed by the non privileged user.  Due to some quirks, you'll need to run the install command twice
```bash
vagrant ssh
cd /vagrant
npm install -g --save-dev gulp
npm install -g --save-dev gulp-load-plugins browser-sync main-bower-files run-sequence del
npm update
```

To get the code built deployed locally in the VM.  You'll want to run this all the time as part of your dev/CI processes

```bash
vagrant ssh
cd /vagrant
bower install
gulp build
```

Access the local project website at:  
http://192.168.33.10

