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
#█▓▒░ functions

#█▓▒░ upload file to transfer.sh
transfer() {
  if [ $# -eq 0 ]; then
    echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md";
    return 1;
  fi
  tmpfile=$( mktemp -t transferXXX );
  if tty -s; then
    basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g');
    curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile;
  else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile;
  fi;
  cat $tmpfile;
  rm -f $tmpfile;
}

#█▓▒░read markdown files like manpages
markdown() {
    pandoc -s -f markdown -t man "$*" | man -l -
}

#█▓▒░mission-control
mission-control() {
    # mpv --no-terminal http://somafm.com/missioncontrol.pls 2>&1 >/dev/null &
    mpv http://somafm.com/missioncontrol.pls
}

#█▓▒yt-audio
function mm() {
    mpv --no-video --ytdl-format=bestaudio ytdl://ytsearch10:"$@"
}
