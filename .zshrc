# ++ paths ++

# oh-my-zsh
export ZSH="/home/sentaku/.oh-my-zsh"
# Colored man pages
export PAGER="most"
# script PATH for vifm
export PATH=$PATH:./.config/vifm/scripts

# ++ End of paths ++

# ++ Theme ++
ZSH_THEME="intheloop"

# ++ Plugins ++ 
plugins=(git ubuntu zeus nanoc python sudo vim-interaction vi-mode man rails history)

# ++ Sources & Aliases ++
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias vifm='vifmrun'
alias config='/usr/bin/git --git-dir=$HOME/.wsl/ --work-tree=$HOME'
alias di='docker images'
alias dr='docker rmi'
alias dps='docker ps'
config config status.showUntrackedFiles no

# ++ logo-ls Configs ++
alias ls='logo-ls'
alias la='logo-ls -A'
alias ll='logo-ls -al'
# equivalents with Git Status on by Default
alias lsg='logo-ls -D'
alias lag='logo-ls -AD'
alias llg='logo-ls -alD'
# ++ end of logo-ls configs ++

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh 
