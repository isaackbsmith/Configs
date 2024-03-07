#
# ~/.bashrc
#



# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export http_proxy="http://26.26.26.1:10809/"
export ftp_proxy="ftp://26.26.26.1:10809/"
export rsync_proxy="rsync://26.26.26.1:10809/"
export no_proxy="localhost,127.0.0.1,192.168.1.1,::1,*.local"
export HTTP_PROXY="http://26.26.26.1:10809/"
export FTP_PROXY="ftp://26.26.26.1:10809/"
export RSYNC_PROXY="rsync://26.26.26.1:10809/"
export NO_PROXY="localhost,127.0.0.1,192.168.1.1,::1,*.local"
export https_proxy="http://26.26.26.1:10809/"
export HTTPS_PROXY="http://26.26.26.1:10809/"
