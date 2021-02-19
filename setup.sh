# Run this once on a completely new machine to setup teh goodies.
# . setup.sh

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Vundle to ~/dotfiles
# git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles/vim/bundle/Vundle.vim

# Install homebrew if OSX
unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
  sudo chown -R $(whoami) /usr/local/Frameworks
  sudo chown -R $(whoami) /usr/local/Cellar
  sudo chmod +x ~/dotfiles/scripts/rebindkeys.sh
  sudo defaults write com.apple.loginwindow LoginHook ~/dotfiles/scripts/rebindkeys.sh
  defaults write com.apple.finder AppleShowAllFiles YES
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install CMake
  brew install tmux
  brew install vim --override-system-vim --with-lua
  brew install nvm
  brew install node
  brew install yarn --without-node
  brew install kdiff3
  brew install the_silver_searcher
  brew install bash_completion
  brew install lynx
  brew install pandoc
  brew linkapps
  brew link gettext --force
fi

# nvm setup
mkdir ~/.nvm

# Install vim plugins
vim +PluginInstall +qall

npm install -g standard
npm install -g tldr

# Run symlinks
. link.sh

# Permissions for dotfiles
chmod +x ~/imgls
chmod +x ~/dotfiles/imgls
alias imgls='~/.imgls'

# Create swp file directory
mkdir ~/.vim/swapfiles

# git auto complete
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ./.git-completion.bash

git config --add merge.tool kdiff3
