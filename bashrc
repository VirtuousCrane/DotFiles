#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

alias ls='ls --color=auto'
alias jupyterlab="jupyter lab"
#PS1='[\u@\h \W]\$ '
PS1="\[\033[1;31m\]\A\[\033[0m\] \[\033[1;32m\]\u [\w]\[\033[0m\] \[\033[1;31m\]\$(parse_git_branch)\[\033[0m\]\[\033[1;32m\]\$\[\033[0m\] "

. "$HOME/.cargo/env"

export PS1
export _JAVA_AWT_WM_NONREPARENTING=1
zsh

