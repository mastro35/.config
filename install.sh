#!/bin/bash

echo 
echo '__  _____         _       _____         _    '
echo '\ \/ / __|___  __| |___  |_   _|__  ___| |___'
echo ' >  < (__/ _ \/ _` / -_)   | |/ _ \/ _ \ (_-<'
echo '/_/\_\___\___/\__,_\___|   |_|\___/\___/_/__/'
echo 
xcode-select --install

echo 
echo ' _  _               _                     '
echo '| || |___ _ __  ___| |__ _ _ _____ __ __  '
echo '| __ / _ \ |  \/ -_) |_ \ |_/ -_) V  V /  ' 
echo '|_||_\___/_|_|_\___|_.__/_| \___|\_/\_/   '
echo 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off
brew update

echo 
echo ' ___        _       '
echo '| __|__ _ _| |_ ___ '
echo '| _/ _ \ | \  _(_-< '
echo '|_|\___/_||_\__/__/ '
echo 
brew update
brew install --cask font-roboto-mono
brew install --cask font-fira-code
brew install --cask font-blex-mono-nerd-font

echo 
echo ' ___ ___  __  __ '
echo '| _ \   \|  \/  |'
echo '|  _/ |) | |\/| |'
echo '|_| |___/|_|  |_|'
echo 
brew install pdm

echo 
echo ' ____        _    _     '
echo '|_  /_____ _(_)__| |___ '
echo ' / // _ \ \ / / _` / -_)'
echo '/___\___/_\_\_\__,_\___|'
echo 
brew update
brew install zoxide

echo 
echo ' ___              _         '
echo '| _ \__ _ _ _  __| |___  __ '
echo '|  _/ _` | | \/ _\ / _ \/ _|'
echo '|_| \__,_|_||_\__,_\___/\__|'
echo 
brew update
brew install pandoc

echo 
echo '  ___             ___      _         '
echo ' / _ \ _ _  ___  |   \ _ _(_)_ _____ '
echo '| (_) | | \/ -_) | |) | |_| \ V / -_)'
echo ' \___/|_||_\___| |___/|_| |_|\_/\___|'
echo 
brew install --cask OneDrive

echo 
echo ' ___                     _   '
echo '| _ ) _____ __  _ _  ___| |_ '
echo '| _ \/ _ \ \ /_| | \/ -_)  _|'
echo '|___/\___/_\_(_)_||_\___|\__|'
echo 
brew install --cask box-drive

echo 
echo ' ____'
echo '|_  /'
echo ' / / '
echo '/___|'
echo 
brew install z

echo 
echo ' ___                  '
echo '| __|_ __  __ _ __ ___'
echo '| _|| |  \/ _\ / _(_-<'
echo '|___|_|_|_\__,_\__/__/'
echo 
brew update
brew install emacs --cask

echo 
echo ' ___      ___          '
echo '| _ \_  _| __|_ ___ __ '
echo '|  _/ || | _|| | \ V / '
echo '|_|  \_, |___|_||_\_/  '
echo '     |__/              '
echo 
brew update
brew install pyenv 
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
# echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
# echo 'eval "$(pyenv init -)"' >> ~/.zshrc

echo 
echo ' ___ _         _    '
echo '/ __| |__ _ __| |__ '
echo '\__ \ / _\ / _| / / '
echo '|___/_\__,_\__|_\_\ '
echo 
brew update
brew install slack --cask

echo 
echo '  ___ _           _   _        '
echo ' / __| |_  ___ __| |_| |_ _  _ '
echo '| (_ | | \/ _ (_-<  _|  _| || |'
echo ' \___|_||_\___/__/\__|\__|\_, |'
echo '                          |__/ '
echo 
brew install --cask ghostty

echo
echo '    _             _
echo ' __| |_  _ _ _  _| |__ _  _
echo '/ _| | \| |_| || | |_ \ || |
echo '\__|_||_|_|  \_,_|_.__/\_, |
echo '                       |__/
echo
brew install chruby

echo 
echo ' _        _        '
echo '| |  _  _| |____ _ '
echo '| |_| || | / / _\ |'
echo '|____\_,_|_\_\__,_|'
echo 
brew install mastro35/homebrew-mastro35/luka

echo 
echo ' ___  _  __  _   '
echo '| _ \/ |/  \| |__'
echo '|  _/| | () | / /'
echo '|_|  |_|\__/|_\_\'
echo 
brew install powerlevel10k

# Link system dotfiles
ln -sf ~/.config/.zshrc ~/.zshrc
ln -sf ~/.config/.gitconfig ~/.gitconfig
echo "Dotfile installati correttamente"

# Note
# CTRL-Space is by default binded to "change input source" in MacOS. 
# To use Emacs you have to free that shortcut on keyboard settings. 
# If you can't find the settings, just add another input source and it should appears.
