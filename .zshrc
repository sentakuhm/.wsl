# ++ paths ++

# oh-my-zsh
export ZSH="/home/sentaku/.oh-my-zsh"
# Colored man pages
export PAGER="most"
# script PATH for vifm
export PATH=$PATH:./.config/vifm/scripts

# ++ End of paths ++

# ++ Theme ++
ZSH_THEME="eastwood"

# ++ Plugins ++ 
plugins=(git ubuntu zeus nanoc python sudo vim-interaction vi-mode man rails history)

# ++ Sources & Aliases ++
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias vifm='vifmrun'
alias config='/usr/bin/git --git-dir=$HOME/.wsl/ --work-tree=$HOME'
config config status.showUntrackedFiles no

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh 
