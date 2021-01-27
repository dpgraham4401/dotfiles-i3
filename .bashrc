# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#color termainl hostname/directory
PS1='\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01:34m\]\W \$\033[00m\] '

(cat $HOME/.config/wpg/sequences &)

export EDITOR=/usr/bin/vim
