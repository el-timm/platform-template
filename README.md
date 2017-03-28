# Project Information

For building the project, we rely on:

* [NGINX](https://www.nginx.com) for the webserver
* [Node.js](https://nodejs.org) and [npm](https://www.npmjs.com) for package management of the build tools
    * [Bower](https://bower.io) for JavaScript package management
    * [Gulp](http://gulpjs.com/) for Task automation (lint, condensation, minification, etc)


## Project Notes

The template is built to include all of the JavaScript dependencies required by the SPIN template.  Many of these libraries
are for demonstration purposes, and likely are not necessary for your deployment.  You'll want to augment the JS included into your project accordingly.  (See bower.json)


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

To get the code built deployed locally in the VM.  You'll want to run this all the time as part of your dev/CI processes

```bash
vagrant ssh
cd /vagrant
bower install
gulp build
```

Access the local project website at:  
http://platform.local.com/


## Generated Files
* /dist : files that are ready to package (minified, cscc compiled, etc)
* /serve : same files as in /dist except are behind the testing webserver for immediate feedback
