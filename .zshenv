#enables vi in terminal
bindkey -v
bindkey '^R' history-incremental-search-backward

#add config to sync configurations with git
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
config config status.showUntrackedFiles no


# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# setupup completion http://zsh.sourceforge.net/Doc/Release/Completion-System.html#Completion-System
autoload -Uz compinit && compinit
