# Run this once on a completely new machine to setup teh goodies.
# . setup.sh

# Install Vundle to ~/dotfiles
git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles/vim/bundle/Vundle.vim

# Install homebrew if OSX
unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install CMake
  brew install tmux
  brew install macvim --override-system-vim
  brew linkapps
fi

# Install vim plugins
vim +PluginInstall +qall

if [[ "$unamestr" == 'Darwin' ]]; then
  ~/.vim/bundle/YouCompleteMe/install.py  
fi

# Run symlinks
. link.sh


