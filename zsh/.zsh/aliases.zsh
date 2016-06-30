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

#github
alias git="hub"
alias g="hub"
alias ga="git add"
alias gu="git reset HEAD --"
alias gc="git commit -m"
alias gs="git status"
alias gd="git diff"
alias gf="git fetch"
alias gm="git merge"
alias gr="git rebase"
alias gp="git push"
alias gpr="hub pull-request"
alias gn="git log --graph --decorate --pretty=oneline --abbrev-commit --all"

#util
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
alias record="ffmpeg -f x11grab -s 1366x768 -an -r 16 -loglevel quiet -i :0.0 -b:v 5M -y" #pass a filename
alias exptmp="sudo mount -o remount,size=3G,noatime /tmp"
alias pomodoro="sleep 1500 && gedit -b; sleep 60 && killall gedit"
alias ag="ag --color --color-line-number '0;35' --color-match '46;30' --color-path '4;36'"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
alias rock="ncmpcpp"
alias fixcursor="xsetroot -cursor_name left_ptr"

#make large ascii letters
alias ascii="toilet -t -f 3d"
alias future="toilet -t -f future"

#mail
email() {
	echo $3 | mutt -s $2 $1
}
# read markdown files like manpages
md() {
    pandoc -s -f markdown -t man "$*" | man -l -
}
