# Download zsh
echo Downloading zsh
sudo apt install zsh -y

# Downloading oh-my-zsh
echo Downloading oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Download powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Copy over .p10k.conf
cp ./.p10k.conf ~/

# Download dracula theme
mkdir -p ~/.vim/pack/themes/start
cd ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git dracula

# Copy over .vimrc
cp ./.vimrc ~/.vimrc

# Copy over .zshrc
cp ./.zshrc ~/.zshrc

# Copy over ranger settings
sudo apt install ranger
# Copy over rifle.conf
cp ./rifle.conf ~/.config/ranger/

# DEPRECATED: using jk;l instead :)
# # Copy over rc.conf
# cp ./rc.conf ~/.config/ranger/

# Copy over tmux settings
sudo apt install tmux
# Copy over rc.conf
cp ./.tmux.conf ~/

echo "Install tmux plugins using prefix + I"

## Install nvim
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip curl

# Now we install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim-linux64
sudo mkdir -p /opt/nvim-linux64
sudo chmod a+rX /opt/nvim-linux64
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin
## End Install
#
# Install nvim kickstart
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
