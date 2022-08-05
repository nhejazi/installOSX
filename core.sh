#!/usr/local/bin/bash

# get Homebrew utility
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# make sure homebrew is the latest version
brew update

# upgrade any formulae already installed
brew upgrade

# tap Homebrew libraries
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

# get XCode and core Homebrew tools
brew install wget curl coreutils gnu-sed git git-lfs libgit2 zmq czmq
brew install gdal geos boost gperftools gpg pinentry-mac
brew install libjpeg libtiff libsvg libxml2
brew install hacker1024/hacker1024/coretemp

# add some newer fonts via Cask
brew install --cask font-fira-code font-fontawesome

# add mosh (mobile shell client) and tmux (for terminal multiplexer)
brew install mosh
brew install tmux

# get The Silver Searcher (for fast file searching)
brew install the_silver_searcher

# setup my dotfiles
git clone https://github.com/nhejazi/mydots.git $HOME/.dotfiles
cd $HOME/.dotfiles
sh ./_setup.sh
cd

# get newer bash and completions
brew install bash bash-completion@2

# get zsh, zsh-completions, and z-plug manager
brew install zsh zsh-completions
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# get Vim and NeoVim
brew install vim

# get and setup config files for using Vim
if [ ! -d $(echo $HOME/.vim) ]; then
  git clone http://github.com/nhejazi/vim_lyfe.git $HOME/.vim
fi
sh $HOME/.vim/_setup.sh

# get and setup config files for using Neovim
if [ ! -d $(echo $HOME/.config/nvim) ]; then
  git clone http://github.com/nhejazi/vim_lyfe.git $HOME/.config/nvim
fi
sh $HOME/.config/nvim/_setup.sh

# remove outdated versions of stuff from cellar
brew cleanup
