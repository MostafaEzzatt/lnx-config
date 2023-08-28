# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
#PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# PS1='\[\e[38;5;51;1;3m\]\u \[\e[0;1m\][ \[\e[0;38;5;207m\]\T\[\e[0m\] - \[\e[38;5;220;3m\]\w\[\e[0;1m\] ]\[\e[38;5;168m\] [ \[\e[38;5;170m\] \[\e[38;5;171;3m\]$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)\[\e[23;38;5;168m\] ] \[\e[38;5;216m\]:\n  \[\e[39m\] ~> \[\e[0m\]'
PS1='\[\e[38;5;196;1m\] \[\e[0;38;5;51m\]\u \[\e[0;1m\][ \[\e[0;38;5;207m\]\T\[\e[0m\] - \[\e[38;5;220;3m\]\w\[\e[0;1m\] ]\[\e[38;5;168m\] [ \[\e[38;5;170m\] \[\e[38;5;171;3m\]$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)\[\e[23;38;5;168m\] ] \[\e[38;5;216m\]:\n  \[\e[39m\] ~> \[\e[0m\]'
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
# eval "$(dircolors)"
#alias ls='ls $LS_OPTIONS'
#alias ll='ls $LS_OPTIONS -l'
#alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
