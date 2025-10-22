#!/bin/bash

echo +++ Installing Xcode Tools
xcode-select --install

echo +++ Installing HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off
brew update

echo +++ Installing Fonts
brew install --cask font-roboto-mono
brew install --cask font-fira-code
brew install --cask font-blex-mono-nerd-font
brew install --cask font-hack-nerd-font
brew install --cask sf-symbols
brew install --cask font-sf-mono
brew install --cask font-sf-pro
brew install --cask font-sketchybar-app-font

echo +++ Installing PDM
brew install pdm

echo +++ Installing Zoxide
brew install zoxide

echo +++ Installing Pandoc
brew install pandoc

echo +++ Installing OneDrive
brew install --cask OneDrive

echo +++ Installing Box
brew install --cask box-drive

echo +++ Installing Z
brew install z

echo +++ Installing Emacs
brew install emacs --cask

echo +++ Installing PyEnv
brew install pyenv 
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
# echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
# echo 'eval "$(pyenv init -)"' >> ~/.zshrc

echo +++ Installing Slack
brew install slack --cask

echo +++ Installing ghostty
brew install --cask ghostty

echo +++ Installing chruby
brew install chruby

echo +++ Installing luka
brew install mastro35/homebrew-mastro35/luka

echo +++ Installing powerlevel10k
brew install powerlevel10k

# echo +++ Installing JankyBorders
# brew tap FelixKratz/formulae
# brew install borders

# echo +++ Installing Sketchy Bar
# brew tap FelixKratz/formulae
# brew install sketchybar

# echo +++ Installing Aerospace
# brew install --cask nikitabobko/tap/aerospace

echo +++ Installing RemindersMenubar
brew install --cask reminders-menubar

# Link system dotfiles
ln -sf ~/.config/.zshrc ~/.zshrc
ln -sf ~/.config/.gitconfig ~/.gitconfig
echo "Dotfile installati correttamente"

# Note
# CTRL-Space is by default binded to "change input source" in MacOS. 
# To use Emacs you have to free that shortcut on keyboard settings. 
# If you can't find the settings, just add another input source and it should appears.
