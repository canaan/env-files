# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias vi='vim'
export LESS=' -R'
alias grep='grep --with-filename --line-number --color=always'


HISTCONTROL=ignoredups
export HISTSIZE HISTFILESIZE HISTCONTROL
export HISTIGNORE='fg*:bg*:history*:cd*'
HISTTIMEFORMAT='%y%m%d %T '
export HISTTIMEFORMAT
