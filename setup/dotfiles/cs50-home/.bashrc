# This file is sourced by bash in every shell.  After editing this
# file, type `source .bashrc' in any shell which is already open and
# in which you want the changes to take effect.  For more info type
# `man bash'.

# The latest official version of this file is available in ~testuser
# with earlier versions available under RCS control.

# --------------------------------------------------------------------

# Source master file.  If you are a power user or control freak, you
# may want to copy it to this location, i.e.
#
#	cp /usr/local/lib/templates/master.bashrc ~/.bashrc
#
# If you do this, however, future changes to the master copy will not
# affect your account.  If you have only minor customizations to make,
# you can simply add code either before or after sourcing the master
# file.

source /usr/local/lib/templates/master.bashrc

# --------------------------------------------------------------------

# aliases used for cs50

alias mygcc='gcc -Wall -pedantic -std=c11 -ggdb'
alias myvalgrind='valgrind --leak-check=full --show-leak-kinds=all'

# safety aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# convenience aliases
alias ls='ls -F'
alias mkdir='mkdir -p'
alias which='type -all'
alias du='du -kh'
alias df='df -kTh'

# --------------------------------------------------------------------
# Set PS1 prompt
# \u: userid, \h:hostname, \w: pwd
#
export PS1='[\u@\h \w]\$ '
#
