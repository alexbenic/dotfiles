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
#█▓▒░config#path
export PATH="$HOME/.local/bin:$HOME/Projects/go/bin:$HOME/.rvm/bin:$HOME/.config/composer/vendor/bin:$HOME/.yarn/bin:/usr/local/bin:$PATH"
export GOPATH="$HOME/Projects/go"
#█▓▒░config#spaceship
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_BATTERY_SHOW=false
#█▓▒░config#direnv
eval "$(direnv hook zsh)"

#█▓▒░zplug#init
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/zvrk/Projects/9hooks/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/zvrk/Projects/9hooks/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/zvrk/Projects/9hooks/node_modules/tabtab/.completions/sls.zsh ]] && . /home/zvrk/Projects/9hooks/node_modules/tabtab/.completions/sls.zsh

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /home/zvrk/.nvm/versions/node/v8.9.3/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/zvrk/.nvm/versions/node/v8.9.3/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh
