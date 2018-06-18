#!/usr/bin/env bash

echo "Preparing to install"
sudo -v

echo "Installing git"
sudo apt-get install git

echo "Configuring git"
echo "Username? "
read GIT_USER_NAME
git config --global user.name $GIT_USER_NAME
echo "Email? "
read GIT_EMAIL
git config --global user.email $GET_EMAIL


echo "Installing tmate"
sudo apt-get install tmate


echo "Installing zsh"
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)




echo "Installing rbenv"
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
git clone https://github.com/rbenv/ruby-build.git
sudo PREFIX=/usr/local ./ruby-build/install.sh

echo "Installing nodenv"
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.zshrc
git clone https://github.com/nodenv/node-build.git $(nodenv root)/plugins/node-build


if [ ! -e ~/.vim/bundle/Vundle.vim ]; then
  echo "installing Vundle for vim packages"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

cwd=`pwd`
echo "creating symlinks"
for file in vimrc tmate.conf; do
  echo " * $file"
  ln -sf $cwd/$file ~/.$file
done
vim +PluginInstall +qall
