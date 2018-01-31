#                 ██
#                ░██
#  ██████  ██████░██
# ░░░░██  ██░░░░ ░██████
#    ██  ░░█████ ░██░░░██
#   ██    ░░░░░██░██  ░██
#  ██████ ██████ ░██  ░██
# ░░░░░░ ░░░░░░  ░░   ░░
#

#█▓▒░ vi
set -o vi

#█▓▒░init#zplug
source ~/.zplug/init.zsh
#█▓▒░init#keychain
eval $(keychain --eval --quiet id_rsa ~/.ssh/id_rsa)

#█▓▒░config#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#█▓▒░config#nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#█▓▒░config#rvm
export PATH="$PATH:$HOME/.rvm/bin"
#█▓▒░config#spaceship
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_BATTERY_SHOW=false

#█▓▒░zplug#init
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
