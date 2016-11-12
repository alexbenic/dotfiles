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
source ~/.zplug/init.zsh

#█▓▒░config#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#█▓▒░config#nvim
source /usr/share/nvm/init-nvm.sh
#█▓▒░config#virtualenvwrapper
source /usr/bin/virtualenvwrapper.sh
#█▓▒░config#workon_dir
export WORKON_HOME=~/.Envs

#█▓▒░zplug#init
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
