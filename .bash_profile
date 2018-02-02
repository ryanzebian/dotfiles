if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
PS1="\[\033[m\]\u\[\033" #white username
PS1+="[32m\]»\[\033" #green seperator
PS1+="[m\]\h \[\033" # white hostname
PS1+="[33;32m\]\W\[\033" #green working directory
# PS1+="[m\]\$ " #white $
 PS1+="[m\] 🤜 " #white emoji
export PS1;

export PS1;
export CLICOLOR=1 
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

set -o vi #enables vi in terminal

