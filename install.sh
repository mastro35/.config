#!/bin/bash

# XCode Tools
xcode-select --install

# HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

# Fonts
brew update
brew install --cask font-roboto-mono
brew install --cask font-fira-code
brew install --cask font-blex-mono-nerd-font

# Scroll Reverser
brew update
brew install --cask scroll-reverser

# PDM
brew install pdm

# Zoxide
brew update
brew install zoxide

# Pandoc
brew update
brew install pandoc

# OneDrive
brew install --cask OneDrive

# Box.net
brew install --cask box-drive

# Z
brew install z

# Emacs
brew update
brew install emacs --cask

# PyEnv
brew update
brew install pyenv 
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
# echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
# echo 'eval "$(pyenv init -)"' >> ~/.zshrc

# Slack
brew update
brew install slack --cask

# Ghostty
brew install --cask ghostty

# Luka
brew install mastro35/homebrew-mastro35/luka

# powerlevel10k
brew install powerlevel10k

# Link system dotfiles
ln -sf ~/.config/.zshrc ~/.zshrc
ln -sf ~/.config/.gitconfig ~/.gitconfig
echo "Dotfile installati correttamente"

# Note
# CTRL-Space is by default binded to "change input source" in MacOS. 
# To use Emacs you have to free that shortcut on keyboard settings. 
# If you can't find the settings, just add another input source and it should appears.
