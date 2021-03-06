# CS50 STUDENTS: DO NOT EDIT THIS FILE
# -*- mode: ruby -*-
# vi: set ft=ruby :

# For more information on Vagrantfile,
#  see https://www.vagrantup.com/docs/vagrantfile/
#  and examples at http://pietervogelaar.nl/vagrant-shell-provision-example

cs50user = "vagrant"

Vagrant.configure("2") do |config|

  # Every Vagrant development environment requires a box.
  # You can search for boxes at https://vagrantcloud.com/search.
  # We stick with one version current at start of course;
  # see https://www.vagrantup.com/docs/boxes/versioning.html
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_version = "20190318.0.0"
  config.vm.hostname = "cs50box"
  # Don't check for updates on every 'vagrant up'
  config.vm.box_check_update = false
  # Boot timeout defaults to 5 minutes (300 seconds). Set to 30 minutes (1800) for those with slower computers
  config.vm.boot_timeout = 1800

  # Upload user's ssh key into box so it can be used for GitHub
  ssh_key_path = "~/.ssh/"
  config.vm.provision "shell", inline: "mkdir -p /home/vagrant/.ssh"
  config.vm.provision "file", source: "#{ ssh_key_path + 'id_rsa' }", destination: "/home/vagrant/.ssh/id_rsa"
  config.vm.provision "file", source: "#{ ssh_key_path + 'id_rsa.pub' }", destination: "/home/vagrant/.ssh/id_rsa.pub"

  # Share this folder to the guest VM:
  # The first arg is the relative path on the host of the folder to share.
  # The second arg is the full path on the guest where the folder will mount.
  config.vm.synced_folder ".", "/home/vagrant/cs50-dev", owner: cs50user, group: cs50user

  # Provider-specific configuration about the VM name and size;
  # set time-synchronization to update quickly when resuming suspended VM.
  config.vm.provider "virtualbox" do |vb|
    vb.name = 'cs50vm'
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50", "--memory", 4096,]
    vb.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 1000]
  end

  # Finish provisioning with a shell script, which **runs inside the VM**
  config.vm.provision "shell", inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive
    log=/home/vagrant/provision.log
    success=true

    function try() {
        echo "\n=====\n$1" &>> $log;
        if ! $1 &>> $log;
        then echo "FAILED:  $1"; success=false; fi
    }

    echo Logging to $log...
    echo Provision started &> $log

    echo Protect your ssh keys...
    try "chmod 600 .ssh/id_rsa .ssh/id_rsa.pub"

    echo Set to Eastern timezone...
    try "cp -f /usr/share/zoneinfo/US/Eastern /etc/localtime"

    echo Installing necessary packages...
    try "apt-get update"
    for package in wget git gcc valgrind emacs autoconf;
    do
        try "apt-get install -y $package"
    done

    echo Installing dot files.
    dotdir=/home/vagrant/cs50-dev/dotfiles/virtualbox
    for dot in $dotdir/*; do
    	dotfile=.${dot##*/}
    	dotlink=/home/vagrant/$dotfile
	rm -f $dotlink
	try "ln -s $dot $dotlink"
    done

    echo "Do all your work in ~/cs50-dev/" > /home/vagrant/DO-NO-WORK-HERE

    if $success
    then echo "Provision succeeded.";
    else echo "PROVISION FAILED; log in and review $log for details.";
    fi
  SHELL

end
