# Setup Your Development Environment For Windows

1. Install Git for Windows. Please go to https://git-scm.com/download to download the windows version and then install it on your PC. Default installation configuration is fine. You can follow the figures below if you are not sure about it.

<img src="./media/windows-git-1.png">

<img src="./media/windows-git-2.png">

<img src="./media/windows-git-3.png">

<img src="./media/windows-git-4.png">

<img src="./media/windows-git-5.png">

<img src="./media/windows-git-6.png">

<img src="./media/windows-git-7.png">

<img src="./media/windows-git-8.png">

<img src="./media/windows-git-9.png">

<img src="./media/windows-git-10.png">

2. Install Vagrant and VirtualBox. Please go to [VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads) and [Vagrant Downloads](https://www.vagrantup.com/downloads.html). Then install them on your PC.

<img src="./media/windows-virtualbox.png">

<img src="./media/windows-vagrant.png">

3. Then you can use Windows Command Prompt to use these tools. You can use following commands to check whether they are installed appropriately:
	
```
vargant -v
git --version

```

<img src="./media/windows-setup-check.png">

4. Then you can follow the Step 1 to Step 8 in the OS X guide for creating a github account, setting up ssh and cloneing the destination repo. You can use Windows Command Prompt instead of MacOS Terminal. Something you need to pay attention here:


	In step 4, you can simply copy your key by opening it directly. It's located in C:\Users\YOUR_USER_NAME\.ssh\id_rsa.pub. Please replace YOUR_USER_NAME within your user name. You can open it with Notepad, Sublime, etc.

	Tip: You can also use Git Bash. You can easily found it by clicking right button in File Explorer. Please use the following command to check the existence of an ssh key and copy its content in Git Bash. (Thanks you Themis for this useful tip!)

```
ls -al ~/.ssh
clip < ~/.ssh/id_rsa.pub
```


<img src="./media/windows-git-clone.png">

<img src="./media/windows-ssh-generate.png">

<img src="./media/windows-ssh-location.png">

5. After you clone the repo, please cd into the cs-50dev folder and run the following command to set up your virtual machine correctly within Vagrant. You can check the figure if you are not clear about it.

```
vargant up
```

<img src="./media/windows-vagrant-up.png">

It really takes some time. Please be patient. After it's finished, please use the following command to shutdown the VM.

```
vargant halt
```
6. Please use the following command for dotfiles configurations.

```
git config --global core.excludesfile ~/.gitignore_global
```

<img src="./media/windows-dotfiles.png">