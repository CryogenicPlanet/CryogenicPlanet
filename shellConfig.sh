# This file will setup the default config that @CryogenicPlanet uses across machines
yes | sudo apt install zsh
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 
source ~/.zshrc
echo "Setting Vim config"
wget https://missing.csail.mit.edu/2020/files/vimrc
://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
mv vimrc ~/.vimrc
echo "Setting up Node v12"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | zsh
source ~/.zshrc
nvm install 12
echo "Installing Yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
yes | sudo apt update 
yes | sudo apt install yarn

yarn -v
echo "Install Github cli"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
yes | sudo apt install gh
git config --global user.name "Rahul Tarak"
git config --global user.email cryogenicplanet@gmail.com
echo "Manually Set .zshrc theme to spaceship"
echo "Use source ~/.zshrc"
source ~/.zshrc
gh auth login
