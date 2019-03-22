# Setup Your Development Environment For OSX

1. Create a [GitHub account](https://github.com).

<!--<img src="./media/github-sign-up.png" alt="github-sign-up"
	title="Github Sign Up"/>-->

2. We need to configure SSH keys for pulling and pushing code with your new GitHub account. First, check to see if you already have an existing ssh key. Open the **Terminal** application, which is located at `Applications/Utilities`. Copy and paste the following command into terminal and press *enter* (⏎). This will list your ssh key files (if they exist). If they **DO NOT** exist, continue on to step 3. If they **DO** exist, skip to step 4.

```
ls -al ~/.ssh
```

3. If you **DO NOT** have an existing ssh key, then you need to generate one. Copy and paste the below command into the terminal, substituting your GitHub email address **before** pressing *enter* (⏎). When you're prompted to "Enter a file in which to save the key," press *enter* (⏎). When you're prompted to "Enter passphrase (empty for no passphrase)" press *enter* (⏎) two more times. Picture below is example output from generating an ssh key.

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

4. After generating your new ssh key, you need to add it to your GitHub account. Copy your ssh key to your clipboard using the command below.

```
pbcopy < ~/.ssh/id_rsa.pub
```

5. Open a browser and navigate to [GitHub](https://www.github.com). After logging in, click on your profile photo in the upper-right corner of the page and navigate to **Settings/SSH and GPG Keys/New SSH key**.

6. In the "Title" field, add a descriptive label for the new key. For example, if you're using a personal Mac, you might call this key "Personal MacBook Air". Paste your key into the "Key" field. Click **Add SSH Key**.

**Insert image of adding ssh key**

2. Open the **Terminal** application. Copy and paste the below command and press *enter* (⏎) to clone the `cs50-dev` repository.

```
cd && git clone git@github.com:cs50spring2019/cs50-dev.git cs50-dev
```

<img src="./media/setup-osx-2.png" alt="setup-osx-1"
	title="Setup OSX"/>
	
2.1. You may receive a warning when you try to use git, like the one shown below. If you do, install the Xcode Development Tools and rerun the command from step 2.

**Insert picture showing Xcode development tools installation**

2.2 Show them rerunning the command and then have them type "yes" when asked about connecting to github.

3. Afterwards, paste the following command into **Terminal** and press *enter* (⏎). Enter the email and password for your **github** account. **NOTE: The characters in the password field will not show up, but they are in fact being read**. You *may* also be prompted for your **computer's** password at some point so that the installation script has the necessary permissions for downloading software on your computer.

```
cd ~/cs50-dev && ./setup/osx-bootstrap.sh
```

**Insert picture showing this step**

**Insert picture showing password prompt**

4. After the installation script runs, read through its output to see if it printed any warnings or errors. It should end with "bootstrap complete", if it was successful. If not, please use the "Vagrant-MacOS" forum on Piazza to ask for help.

> **Replace this image with one on a vanilla machine (there are some brew packages already installed on this one)**
<img src="./media/setup-osx-4.png" alt="setup-osx-4"
	title="Setup OSX"/>