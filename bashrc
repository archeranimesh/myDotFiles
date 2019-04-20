# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#increase the history of bash
# https://www.shellhacks.com/tune-command-line-history-bash/
export HISTSIZE=-1          # https://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=-1      # https://stackoverflow.com/questions/9457233/unlimited-bash-history
shopt -s histappend
export HISTCONTROL=ignorespace:erasedups
export HISTIGNORE="ls:ps:history"
shopt -s cmdhist
export HISTFILE=~/.custom_file
