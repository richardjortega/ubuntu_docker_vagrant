echo -e "\n### Provisioning developer virtual machine - Debian 8 Jeessie for use with Swiftwater... ###\n\n"
echo -e "\n### Updating apt-get list.. ###\n\n"
apt-get update --fix-missing 2> /dev/null
apt-get install -y net-tools \
	curl \
	git \
	vim \
	tmux \
	docker.io \
	sysdig

echo -e "\n### Enable tab-completion for Docker ####\n\n"
source /etc/bash_completion.d/docker.io

echo -e "\n### Update to latest Docker release ###\n\n"
# Check that HTTPS transport is available to APT
if [ ! -e /usr/lib/apt/methods/https ]; then
	apt-get update
	apt-get install -y apt-transport-https
fi

# Add the repository to your APT sources
echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list

# Then import the repository key
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

# Install docker
apt-get update
apt-get install -y lxc-docker

# Install Ruby 2.2.1 and RVM
gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby=2.2.1

echo -e "\n### Provisioning Complete. Enjoy - Swiftwater ###\n\n"
