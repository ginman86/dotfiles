# Run this once on a completely new machine to setup teh goodies.
# . setup.sh

# Install Vundle to ~/dotfiles
git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles/vim/bundle/Vundle.vim

# Install vim plugins
vim +PluginInstall +qall

# Install homebrew if OSX
unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install tmux
fi

# Run symlinks
. link.sh


