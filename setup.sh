# Download zsh
echo Downloading zsh
sudo apt install zsh -y

# Downloading oh-my-zsh
echo Downloading oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Download powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

#Start powerlevel10k wizard
source ~/.zshrc

# Download dracula theme
mkdir -p ~/.vim/pack/themes/start
cd ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git dracula

# Copy over .vimrc
cp ./.vimrc ~/.vimrc

# Copy over .zshrc
cp ./.zshrc ~/.zshrc
