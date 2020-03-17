# base-files version 3.7-1

# To pick up the latest recommended .bash_profile content,
# look in /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# ~/.bash_profile: executed by bash for login shells.

# source the system wide bashrc if it exists
if [ -e /etc/bash.bashrc ] ; then
  source /etc/bash.bashrc
fi

# source the users bashrc if it exists
if [ -e "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# # source the users bashrc if it exists
# if [ -e "${HOME}/.gordsbashrc" ] ; then
#   source "${HOME}/.gordsbashrc"
# fi


export ALTERAOCLSDKROOT="/home/gordwait/altera/14.1/hld"

export QSYS_ROOTDIR="/home/gordwait/altera/14.1/quartus/sopc_builder/bin"
