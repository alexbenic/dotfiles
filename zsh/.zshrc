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
source /usr/share/nvm/init-nvm.sh
#█▓▒░config#autoenv
source /usr/share/autoenv-git/activate.sh
#█▓▒░config#virtualenvwrapper
# source /usr/bin/virtualenvwrapper.sh
#█▓▒░config#workon_dir
# export WORKON_HOME=~/.Envs

#█▓▒░zplug#init
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
