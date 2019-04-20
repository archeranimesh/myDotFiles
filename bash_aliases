if [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias ls='ls -la --color'
    alias myUpdate='sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get clean && sudo apt-get -y autoremove #Update'
elif [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls="ls -Gpltrah";
    # https://stackoverflow.com/questions/2198377/how-to-clear-previous-output-in-terminal-in-mac-os-x
    alias cls='printf "\33c\e[3J"'
else
    echo $OSTYPE;
fi
alias ll='ls -ltrah'
alias rm='rm -i'
