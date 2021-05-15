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

export AWS_DEFAULT_PROFILE=personal
#Issue with GPG using Git, must assign environment variable
#https://stackoverflow.com/questions/39494631/gpg-failed-to-sign-the-data-fatal-failed-to-write-commit-object-git-2-10-0
# or  brew cask install gpg-suite
export GPG_TTY=$(tty) 