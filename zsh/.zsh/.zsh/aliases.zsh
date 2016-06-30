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
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ xero <x@xero.nu>
# ░▓ code   ▓ http://code.xero.nu/dotfiles
# ░▓ mirror ▓ http://git.io/.files
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░
#
#█▓▒░ aliases
alias unmount="/usr/local/bin/unmount.sh"
alias ll="ls -lah --color=auto"
alias ls="ls --color=auto"
alias lsl="ls -lh --color=auto"
alias "cd.."="cd ../"
alias up="cd ../"
alias gv="gvim"
alias y="yaourt"
alias vi="nvim"
alias vim="nvim"
alias mplayer="mplayer -af scaletempo"
#alias emacs="vim"
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
alias pacman="sudo pacman"
alias systemctl="sudo systemctl"
alias apachereload="sudo systemctl restart httpd.service"
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
#alias todo="bash ~/code/sys/todo"
alias record="ffmpeg -f x11grab -s 1366x768 -an -r 16 -loglevel quiet -i :0.0 -b:v 5M -y" #pass a filename
alias goodbye="bash ~/Tools/goodbye"
alias mk="mkdir -p"
alias exptmp="sudo mount -o remount,size=3G,noatime /tmp"
alias pomodoro="sleep 1500 && gedit -b; sleep 60 && killall gedit"
alias ag="ag --color --color-line-number '0;35' --color-match '46;30' --color-path '4;36'"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
alias rock="ncmpcpp"
#alias mixer="alsamixer"
alias genplaylist="cd ~/music;find . -name '*.mp3' -o -name '*.flac'|sed -e 's%^./%%g' > ~/.mpd/playlists/all.m3u"
#alias matrix="cmatrix -b"
#alias pipes="bash ~/code/fun/pipes"
#alias pipesx="bash ~/code/fun/pipesx"
#alias rain="bash ~/code/fun/rain"
alias screenfetch="~/code/sys/info"
alias hashcompare="bash ~/code/sys/hash-compare "
#alias tempwatch="while :; do sensors; sleep 1 && clear; done;"
alias term="urxvtc -hold -e " #used for run menu
alias fixcursor="xsetroot -cursor_name left_ptr"
#alias img="bash ~/code/sys/img"
#alias gitio="bash ~/code/sys/gitio"
#alias ix="bash ~/code/sys/ix"
#alias ioup="~/code/sys/ioup"
#alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
#alias clbin="curl -F 'clbin=<-' https://clbin.com"

#make large ascii letters
#alias toiletlist='for i in ${TOILET_FONT_PATH:=/usr/share/figlet}/*.{t,f}lf; do j=${i##*/}; echo ""; echo "╓───── "$j; echo "╙────────────────────────────────────── ─ ─ "; echo ""; toilet -d "${i%/*}" -f "$j" "${j%.*}"; done'
#alias ascii="toilet -t -f 3d"
#alias future="toilet -t -f future"
#alias rusto="toilet -t -f rusto"
#alias rustofat="toilet -t -f rustofat"

#fasd
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
alias v='f -e vim' # quick opening files with vim
#alias m='f -e mplayer' # quick opening files with mplayer
alias m='f -e vlc' # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open

tmx() {
  [[ $# -eq 0 ]] && bash /usr/bin/tmux 0 || bash /usr/bin/tmux $#
}
email() {
	echo $3 | mutt -s $2 $1
}
pcat() {
	pygmentize -f terminal256 -O style=monokai -g
}
pless() {
	pygmentize -f terminal256 -O style=monokai -g $1 | less -r
}
# read markdown files like manpages
#md() {
#    pandoc -s -f markdown -t man "$*" | man -l -
#}
