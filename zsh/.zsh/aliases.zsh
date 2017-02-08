#                 ██
#
#                ░██
#  ██████  ██████░██
# ░░░░██  ██░░░░ ░██████
#    ██  ░░█████ ░██░░░██
#   ██    ░░░░░██░██  ░██
#  ██████ ██████ ░██  ░██
# ░░░░░░ ░░░░░░  ░░   ░░
#
#
#█▓▒░ aliases
alias up="cd ../"
alias y="yaourt"
alias vim="nvim"
alias mplayer="mplayer -af scaletempo"
alias info="info --vi-keys"
alias o="xdg-open"

#█▓▒░ global
alias -g G="| grep"
alias -g GV="| grep -v"
alias -g H="| head"
alias -g L="| $PAGER"
alias -g P=' --help | less'
alias -g R="| ruby -e"
alias -g S="| sed"
alias -g X="| xclip -selection clipboard"
alias -g T="| tail"
alias -g V="| vim -R -"
alias -g U=' --help | head'
alias -g W="| wc"

#█▓▒░github
alias git="hub"
alias g="hub"
alias ga="git add"
alias gu="git reset HEAD --"
alias gc="git commit -m"
alias gs="git status -sb"
alias gd="git diff"
alias gf="git fetch"
alias gm="git merge"
alias gr="git rebase"
alias gp="git push"
alias gpr="hub pull-request"
alias gn="git log --graph --decorate --pretty=oneline --abbrev-commit --all"

#█▓▒░util
alias exptmp="sudo mount -o remount,size=3G,noatime /tmp"
alias pomodoro="sleep 1500 && gedit -b; sleep 60 && killall gedit"
alias ag="ag --color --color-line-number '0;35' --color-match '46;30' --color-path '4;36'"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
alias rock="ncmpcpp"
alias fixcursor="xsetroot -cursor_name left_ptr"
alias ascii="toilet -t -f 3d"
alias future="toilet -t -f future"
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
alias record="ffmpeg -f x11grab -s 1280x1024 -an -r 16 -loglevel quiet -i :0.0 -b:v 5M -y" #pass a filename
