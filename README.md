### Ubuntu Server 14.04 Image

Installs:
- `docker`, `ruby 2.2.1`, `rvm`, `tmux`, `vim`, `git`, `node`

This bootstrap bash script will update `apt-get` to latest, update `docker` to the latest. Add some common tools for working within the VM


#### Instructions
- Requires `vagrant` on main machine (for development)
- For production, run only `bootstrap.sh`


#### Usage
- Ensure you have **VirtualBox** (https://www.virtualbox.org/) and **Vagrant** (https://www.vagrantup.com/) installed. Both have OS specific installers via the Vagrant website.
- Ensure you have Vagrant's plugin for Virtualbox Guest Additions installed: `$ vagrant plugin install vagrant-vbguest`
- To start: `vagrant up`

#### Docker example
- Make an apps directory: `$ mkdir apps`
- Change to direcotry: `$ cd apps`
- Git clone NodeJS Docker example: `$ git clone git@github.com:richardjortega/nodejs_docker_example.git`
