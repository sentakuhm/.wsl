# wsl dotfiles

### To Install
* vim
* tmux
* vifm
* powerline
* zsh-autosuggestions
* zsh-syntax-highlighting
* most "for colored man pages"
* oh-my-zsh "zsh themes" to install run this command:
`$sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
* and clone vim-plug and tmux plugins manager to home directory:
for vim-plug:
```
$curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
### Installation
```
$git clone --separate-git-dir=$HOME/.wsl https://github.com/sentakuhm/.wsl.git tmpdotfiles
$rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
$rm -r tmpdotfiles
```
