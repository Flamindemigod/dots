#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --hyperlink=auto'
alias rg='rg --vimgrep --hyperlink-format=kitty'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
EDITOR="nvim"
