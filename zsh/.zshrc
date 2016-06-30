source ~/.zplug/init.zsh

set -o vi

#helpers
zplug "djui/alias-tips"
#helpers#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#oh-my-zsh#util
zplug "lib/completion",       from:oh-my-zsh
zplug "lib/git",              from:oh-my-zsh
zplug "lib/directories",      from:oh-my-zsh
#oh-my-zsh#plugins
zplug "plugins/wd",           from:oh-my-zsh
zplug "plugins/fasd",         from:oh-my-zsh
zplug "plugins/fancy-ctrl-z", from:oh-my-zsh
zplug "plugins/sudo",         from:oh-my-zsh
zplug "plugins/archlinux",    from:oh-my-zsh
zplug "plugins/npm",          from:oh-my-zsh
zplug "plugins/systemd",           from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh

#theme
zplug "yarisgutierrez/classyTouch_oh-my-zsh"

#local
zplug "~/.zsh", from:local

#zsh-users#util
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", nice:10

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
