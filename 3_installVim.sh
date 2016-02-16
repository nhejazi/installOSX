# get Vim and MacVim
export PATH=/usr/local/bin:$PATH
brew update
brew install vim && brew install macvim
brew linkapps macvim

# setup preferred configuration for Vim and MacVim
if [ -e ~/.vim ]; then 
  do rm -rf ~/.vim; 
fi

if [ -e ~/.vimrc]; then 
  do rm -f ~/.vimrc; 
fi

git clone git@github.com:nhejazi/myvimconfig.git ~/.vim
cd ~/.vim
sh _setup.sh
