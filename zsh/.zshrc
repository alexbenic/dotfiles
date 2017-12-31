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

#█▓▒░zplug#config
#temp workaround
# unset ZSH_CACHE_FILE
source ~/.zplug/init.zsh

#█▓▒░config#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#█▓▒░config#nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
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
