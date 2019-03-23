# 'dot' files for CS50 MacOS users

## For git

We recommend doing all your code development in Linux. 
That said, you will keep all your code files in a folder on your Mac.
It may sometimes be convenient to run git commands from MacOS rather than Linux.
Those git commands will look in your home directory (aka `~`, aka something like `/Users/yourname`), for configuration files.
Git should have created `~/.gitconfig` when you set up for the course,
but you may want to review that file and consider adopting some of the content from the `../virtualbox/gitconfig` file.

You'll definitely need one more file: `~/.gitignore_global`.
To install it, copy it to your home directory -- but add a dot at the beginning of the name:

```bash
  cp -i gitignore_global ~/.gitignore_global
```

If the first command expresses concern, you may already have a `~/.gitignore_global` file.
If so, you may want to examine both that file and our recommended file and decide whether to incorporate some of our suggestions into your existing file.

Then, tell git where to find it:

```bash
  git config --global core.excludesfile ~/.gitignore_global
```

This command need be run only once.
You may edit the `.gitignore_global` file any time.

## Others

You may optionally want to install the other files in this directory, into your MacOS home directory.
**Be careful:** you may already have some of these files installed.
The `-i` parameter on `cp` tells `cp` to inquire before overwriting an existing file.
If it complains, answer "no".
Then review your current file, and consider incorporating parts of our file.

```bash
  cp -i bash_logout ~/.bash_logout
  cp -i bash_profile ~/.bash_profile
  cp -i bashrc ~/.bashrc
  cp -i bashrc.default ~/.bashrc.default
  cp -i emacs ~/.emacs
  cp -i profile ~/.profile
```