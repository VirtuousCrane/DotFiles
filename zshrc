# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/akagi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Aliases
alias ls='ls --color=auto'
alias jupyterlab='jupyter lab'
alias jupyternotebook='jupyter notebook'
# For git prompt
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo ''$branch''
  fi
}
# End git prompt
# Prompt Customization
setopt prompt_subst
PROMPT='%F{cyan}%t%f %F{green}%n%f [%F{blue}%~%f] %# '
RPROMPT='%F{green}$(git_branch_name)%f'
autoload -Uz promptinit
promptinit
# End prompt customization
