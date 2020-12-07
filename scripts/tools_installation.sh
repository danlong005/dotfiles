##########################################################
# tools
##########################################################
echo "Installing vim"
sudo apt-get install neovim

echo "Installing tmux"
sudo apt-get install tmux

echo "Installing zsh"
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

