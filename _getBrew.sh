#!/usr/bin/bash

# get Homebrew utility
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# get Homebrew essentials
brew update && brew upgrade
brew doctor
brew tap caskroom/cask
brew tap homebrew/science
brew tap caskroom/fonts

# get XCode and core Homebrew tools
xcode-select --install
brew install wget git coreutils curl
brew install zmq czmq libzmq3
brew install libsvg libxml2 gdal geos boost
brew cask install font-fira-code font-fontawesome