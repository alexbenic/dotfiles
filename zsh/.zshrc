source ~/.zplug/init.zsh

#zsh-users#util
zplug "zsh-users/zsh-syntax-highlighting", nice:10
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"

#helpers
zplug "mollifier/anyframe"
zplug "djui/alias-tips"
zplug "mfaerevaag/wd"

#oh-my-zsh#util
zplug "lib/directories",      from:oh-my-zsh
zplug "lib/git",              from:oh-my-zsh
#oh-my-zsh#plugins
zplug "plugins/git",          from:oh-my-zsh
zplug "plugins/fasd",         from:oh-my-zsh
zplug "plugins/fancy-ctrl-z", from:oh-my-zsh
zplug "plugins/sudo",         from:oh-my-zsh
zplug "plugins/archlinux",    from:oh-my-zsh
zplug "plugins/npm",          from:oh-my-zsh
#zplug "plugins/man",         from:oh-my-zsh

#theme
zplug "yarisgutierrez/classyTouch_oh-my-zsh"

#local
#zplug "~/.zsh", from:local

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
