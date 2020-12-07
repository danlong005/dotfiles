echo "Installing git"
sudo apt-get install git

echo "Configuring git"
echo "Username? "
read GIT_USER_NAME
git config --global user.name $GIT_USER_NAME
echo "Email? "
read GIT_EMAIL
git config --global user.email $GET_EMAIL

