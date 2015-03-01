# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization

. /etc/ksh.kshrc

umask 002

# PS1='`whoami`@\w> '

EDITOR='/usr/local/bin/vim'
WRKOBJDIR=/usr/obj
BSDOBJDIR=/usr/obj
BROWSER=conkeror
PAGER=less
TERM=/usr/local/bin/urxvt

PKG_PATH=ftp://ftp.usa.openbsd.org/pub/OpenBSD/snapshots/packages/`arch -s`/

CVSROOT=anoncvs@anoncvs1.ca.openbsd.org:/cvs

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:/home/jdt/.gem/ruby/2.2.0/bin:.

export PS1 EDITOR WRKOBJDIR BSDOBJDIR BROWSER PAGER PATH HOME TERM PKG_PATH CVSROOT

# C Stuff

AUTOCONF_VERSION=2.65
CFLAGS='-g -Wall -O2'
LDLIBS='-lm'

export AUTOCONF_VERSION CFLAGS LDLIBS

alias ee='emacsclient'
alias ls='ls -CFh '
alias lpq='lpq -l '
alias screen='screen -R '
alias cvsync='/usr/local/bin/cvsync -vz -p /tmp/cvsync.pid'
