# -*- mode: ruby -*-
# vi: set ft=ruby :

# For more information on the Vagrantfile, see https://www.vagrantup.com/docs/vagrantfile/ 

# Example Vangrantfiles:
# - http://pietervogelaar.nl/vagrant-shell-provision-example 

cs50user = "vagrant" #cs50

Vagrant.configure("2") do |config|

  # Every Vagrant development environment requires a box. 
  # You can search for boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "cs50box"

  # # Upload user's ssh key into box so it can be used for downloading stuff from stash
  # ssh_key_path = "~/.ssh/"
  # config.vm.provision "shell", inline: "mkdir -p /home/vagrant/.ssh"
  # config.vm.provision "file", source: "#{ ssh_key_path + 'id_rsa' }", destination: "/home/vagrant/.ssh/id_rsa"
  # config.vm.provision "file", source: "#{ ssh_key_path + 'id_rsa.pub' }", destination: "/home/vagrant/.ssh/id_rsa.pub"

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  # config.vm.network :hostonly, "192.168.33.10"

  # Assign this VM to a bridged network, allowing you to connect directly to a
  # network using the host's network device. This makes the VM appear as another
  # physical device on your network.
  # config.vm.network :bridged

  # Share an additional folder to the guest VM. 
  # The first argument is the path on the host to the actual folder (everything in this folder). 
  # The second argument is the path on the guest where you mount the folder (must be an absolute path). 
  config.vm.synced_folder "./shared", "/home/vagrant/shared", owner: cs50user, group: cs50user

  # Provider-specific configuration so you can fine-tune the VM.
  config.vm.provider "virtualbox" do |vb|
    vb.name = 'cs50vm'

    vb.customize [
      "modifyvm", :id,
      "--cpuexecutioncap", "50",
      "--memory", 1024,
    ]
  end

  # Upload some setup files to help with setup
  config.vm.provision "file", source: "./setup", destination: "/home/vagrant/setup"

  # Enable provisioning with a shell script.
  config.vm.provision "shell", inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive

    # Install all the packages needed
    apt-get update > /dev/null
    xargs apt-get install -y < /home/vagrant/setup/packages &> /dev/null
    
    # Move the dot files into the top level
    mv /home/vagrant/setup/dotfiles/cs50-home/.??* /home/vagrant/ &> /dev/null

    apt-get install wget -y > /dev/null
    apt-get install git -y > /dev/null
    apt-get install gcc -y > /dev/null
    apt-get install valgrind -y > /dev/null

    apt-get install autoconf -y > /dev/null

    # if you want to run shell scripts, you can also reference those...
    /home/vagrant/cs50-shared/vm-dotfile-setup.sh

    echo "[core]
	    mergeoptions = --no-edit" >> /home/vagrant/.gitconfig
    echo 'export GIT_MERGE_AUTOEDIT=no' >> /home/vagrant/.bashrc

    # Cleanup
    rm -rf /home/vagrant/setup

  SHELL
end
