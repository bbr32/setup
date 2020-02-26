# Terminator 
sudo apt install terminator

# Zsh
sudo apt install zsh
# set as default shell
chsh -s $(which zsh)

# oh my zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# powerline fonts
sudo apt install fonts-powerline

# change theme to agnoster: ZSH_THEME="agnoster" in .zshrc

# Solarized colors
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./install.sh

# add eval `dircolors ~/.dir_colors/dircolors` to .zshrc

# auto suggestions 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# add to list of plugings in .zshrc : plugins=(zsh-autosuggestions)

# remove hostname 
# add to .zshrc: prompt_context() {} 

# syntax highlight 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# for vscode powerline fonts
git clone https://github.com/abertsch/Menlo-for-Powerline
sudo mv Menlo\ for\ Powerline.ttf /usr/share/fonts/
sudo fc-cache -vf /usr/share/fonts/
# add "terminal.integrated.fontFamily": "Menlo for Powerline", in settings.json of vscode
