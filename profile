# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization

# . /etc/ksh.kshrc

umask 007

# PS1='`whoami`@\w> '

EDITOR='/usr/bin/vim'
WRKOBJDIR=/usr/obj
BSDOBJDIR=/usr/obj
BROWSER=firefox
PAGER=less
#TERM=/usr/local/bin/urxvt
HISTFILE=~/.sh_history
XDG_CONFIG_HOME=~/.config

# PKG_PATH=ftp://ftp.usa.openbsd.org/pub/OpenBSD/snapshots/packages/`arch -s`/

# CVSROOT=anoncvs@anoncvs1.ca.openbsd.org:/cvs

export LC_ALL=en_GB.UTF-8

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:/home/jdt/.gem/ruby/2.2.0/bin:.

export EDITOR WRKOBJDIR BSDOBJDIR BROWSER PAGER PATH HOME HISTFILE XDG_CONFIG_HOME

# C stuff

AUTOCONF_VERSION=2.69
CFLAGS='-g -Wall -O2'
LDLIBS='-lm'
GTAGSLIBPATH=/home/jdt/.gtags/

export AUTOCONF_VERSION CFLAGS LDLIBS GTAGSLIBPATH

# Android stuff
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Rust stuff

RUST_SRC_PATH=~/dev/rust/src/
LD_LIBRARY_PATH=/home/jdt/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib

export RUST_SRC_PATH LD_LIBRARY_PATH
export PATH="$HOME/.cargo/bin:$PATH"

# aliases

alias ee='emacsclient'
alias ls='ls -CFh '
alias lpq='lpq -l '
alias screen='screen -R '
alias cvsync='/usr/local/bin/cvsync -vz -p /tmp/cvsync.pid'


