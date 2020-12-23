##########################################################
# programming languages
##########################################################
echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

echo "Installing rvm"
command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer | bash -s stable
echo "source $HOME/.rvm/scripts/rvm" >> ~/.zshrc

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> ~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ~/.zshrc

source ~/.zshrc
nvm install node
rvm install ruby

