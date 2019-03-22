# Setup Your Development Environment For OSX

1. First, create a [github account](https://github.com).

<img src="./media/github-sign-up.png" alt="github-sign-up"
	title="Github Sign Up"/>

2. Mac users should copy/paste the command shown below into the **terminal** application and press *enter* (⏎). This command will 1) download this repository 2) create a CS50 folder 3) and run the bootstrap script for downloading and configuring your virtual machine (VM).

```
git clone https://github.com/cs50spring2019/cs50-dev.git cs50-dev
```

<img src="./media/setup-osx-2.png" alt="setup-osx-1"
	title="Setup OSX"/>
	
2.1. You may receive this message when you try to use git. If you do, install these Xcode Development Tools and then run the command again.

**Insert picture showing Xcode development tools installation**

3. Afterwards, paste the following in Terminal and press *enter* (⏎). Enter the email and password for your **github** account. **NOTE: The characters in the password field will not show up, but they are in fact being read**.

```
cd cs50-dev && ./setup/osx-bootstrap.sh
```

**Insert picture showing this step**

4. You will be prompted for your **computer's** password so that the installation script has the necessary permissions for downloading software on your computer.

**Insert picture showing password prompt**

5. After entering your password the installation script should run and install all of the necessary development tools. If successful, you should see something similar to the following output:

> **Replace this image with one on a vanilla machine (there are some brew packages already installed on this one)**
<img src="./media/setup-osx-4.png" alt="setup-osx-4"
	title="Setup OSX"/>