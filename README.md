# Config Files
Repo with all my config files handled using git
## Getting Started 
note use config as alias for git
setup git repo from scratch: 
```
git init --bare $HOME/.myconf
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
config config status.showUntrackedFiles no
```
download config files:
```
/usr/bin/git clone --bare https://github.com/ryanzebian/dotfiles $HOME/.myconf 
/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME checkout 
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
```


## Acknowledgements
StreakyCobra https://news.ycombinator.com/item?id=11071754

