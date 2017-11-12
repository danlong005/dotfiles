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


echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
nvm install node
echo "nvm use node" >> ~/.zshrc


echo "Installing rvm"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby


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
