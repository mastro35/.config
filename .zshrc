# my aliases
alias ls="ls -Flask --color"
alias e=emacs

# PyEnv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Pipx
export PATH="$HOME/.local/bin:$PATH"

# z
. /opt/homebrew/etc/profile.d/z.sh
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

[ -f "/Users/dave/.ghcup/env" ] && source "/Users/dave/.ghcup/env" # ghcup-env

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# add functions to zsh to pair and unpair external devices
MAGIC_KEYBOARD="38-09-fb-13-da-44"
MAGIC_MOUSE="3c-a6-f6-cf-91-1e"
MAGIC_TRACKPAD="<your-trackpad-id>"


# add functions to zsh to pair and unpair external devices
MAGIC_KEYBOARD="<your-keyboard-id>" # Sostituisci con l'ID effettivo o lascialo vuoto/commentato
MAGIC_MOUSE="3c-a6-f6-cf-91-1e"
MAGIC_TRACKPAD="<your-trackpad-id>" # Sostituisci con l'ID effettivo o lascialo vuoto/commentato

function pair() {
  # Funzione per eseguire il pairing e la connessione se la variabile è valorizzata
  local device_pair_connect() {
    # La condizione controlla se la variabile $1 esiste (-n) e se non è il placeholder
    if [[ -n "$1" && "$1" != "<your-keyboard-id>" && "$1" != "<your-trackpad-id>" && "$1" != "<your-mouse-id>" ]]; then
      echo "Pairing $2 ($1)..."
      blueutil --pair "$1"
      sleep 1
      echo "Connecting $2 ($1)..."
      blueutil --connect "$1"
      sleep 1
    else
      echo "Variabile $2 non valorizzata, saltando il pairing."
    fi
  }

  device_pair_connect "$MAGIC_KEYBOARD" "MAGIC_KEYBOARD"
  device_pair_connect "$MAGIC_TRACKPAD" "MAGIC_TRACKPAD"
  device_pair_connect "$MAGIC_MOUSE" "MAGIC_MOUSE"
}

function unpair() {
  # Funzione per eseguire la disconnessione e l'unpairing se la variabile è valorizzata
  local device_disconnect_unpair() {
    # La condizione controlla se la variabile $1 esiste (-n) e se non è il placeholder
    if [[ -n "$1" && "$1" != "<your-keyboard-id>" && "$1" != "<your-trackpad-id>" && "$1" != "<your-mouse-id>" ]]; then
      echo "Disconncting $2 ($1)..."
      blueutil --disconnect "$1"
      sleep 1
      echo "Unpairing $2 ($1)..."
      blueutil --unpair "$1"
      sleep 1
    else
      echo "Variabile $2 non valorizzata, saltando l'unpairing."
    fi
  }

  device_disconnect_unpair "$MAGIC_KEYBOARD" "MAGIC_KEYBOARD"
  device_disconnect_unpair "$MAGIC_TRACKPAD" "MAGIC_TRACKPAD"
  device_disconnect_unpair "$MAGIC_MOUSE" "MAGIC_MOUSE"
}

function reconnect() {
	unpair
	pair	
}
