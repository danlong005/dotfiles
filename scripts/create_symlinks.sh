cwd=`pwd`
echo "creating symlinks"
mkdir ~/.config
mkdir ~/.config/nvim
rm ~/.zshrc

ln -sf $cwd/init.vim ~/.config/nvim/init.vim
ln -sf $cwd/tmux.conf ~/.tmux.conf
ln -sf $cwd/zshrc ~/.zshrc
