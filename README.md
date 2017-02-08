```
      ██            ██     ████ ██  ██
     ░██           ░██    ░██░ ░░  ░██
     ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
  ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░
 ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████
░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████
 ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░


 git            > global git config and aliases
 mutt           > minimal mutt setup
 ncmpcpp        > ncurses mpc++ ui/color settings
 pacman         > pacman colors and progress bar animations
 ranger         > file manager with image previews and z3bra theme
 ssh            > remote ssh server keep alive
 themes         > mod of the cathexis dark theme for gtk/qt/xfce
 tmux           > terminal multiplexer with custom status bar
 termite        > sourcerer terminal colors and keyboard settings
 vim            > wizard status bar and sourcerer color scheme
 wallpaper      > the cool desktop background images i use
 zsh            > zshell settings, aliases, and custom prompts
```

##table of contents
 - [managing](#managing)
 - [installing](#installing)
 - [how it works](#how-it-works)
 - [tl;dr](#tldr)
 - [my shell](#my-shell)
 - [vim](#vim)
 - [previews](#previews)

#managing
I manage mine with [gnu stow](http://www.gnu.org/software/stow/), a free, portable, lightweight symlink farm manager. this allows me to keep a versioned directory of all my config files that are virtually linked into place via a single command. this makes sharing these files among many users (root) and computers super simple. and does not clutter your home directory with version control files.

#installing
stow is available for all linux and most other unix like distributions via your package manager.

- `sudo pacman -S stow`
- `sudo apt-get install stow`
- `brew install stow`

or clone it [from source](https://savannah.gnu.org/git/?group=stow) and [build it](http://git.savannah.gnu.org/cgit/stow.git/tree/INSTALL) yourself.

#tl;dr
navigate to your home directory

`cd ~`

clone the repo:

`git clone http://git.xero.nu/dotfiles.git`

enter the dotfiles directory

`cd dotfiles`

install the zsh settings

`stow zsh`

install zsh settings for the root user

`sudo stow zsh -t /root`

install awesomewm theme

`stow awesome`

uninstall awesome theme

`stow -D awesome`

install herbstluftwm

`stow herbstluftwm`

etc, etc, etc...

#my shell
i prefer a minimal setup, and choose to interact with my operating system via the so-called "terminal" or "command line", (read that quoting sarcastically) over a gui interface 2 times out of 3. with the web browser and video player among the noted outliers. in my opinion, using your computer should be a very personal experience. your colors, aliases, key-bindings, etc meticulously crafted to your exacting specifications. so for me, the unix shell is the most important part of my environment.

![](https://raw.githubusercontent.com/xero/dotfiles/master/previews/xero_shell.gif)

my terminal emulator of choice is the lightweight, unicode, 256 color [urxvt](http://linux.die.net/man/1/urxvt). i use [zsh](http://linux.die.net/man/1/zsh) as my interactive shell. it's an extensible, bash like shell with awesome completion and correction engines. i manage multiple shell sessions with [tmux](http://linux.die.net/man/1/tmux). it's a feature packed terminal multiplexer with support for buffers, split windows, detached local and remote sessions, etc. i'm a member of the cult of [vim](http://linux.die.net/man/1/vim). sing phrases to the third reincarnation of the glorious ed! lel. [mpd](http://linux.die.net/man/1/mpd) is my music server and i use [ncmpcpp](http://ncmpcpp.rybczak.net/) as it's frontend. my configs for [urxvt](http://git.io/.urxvt), [zsh](http://git.io/.zsh), [tmux](http://git.io/.tmux), [vim](http://git.io/.vim), [mpd](http://git.io/.mpd) and [ncmpcpp](http://git.io/.ncmpcpp) shown above feature my [sourcerer](http://sourcerer.xero.nu) color scheme.

#vim
with it's tight integration to the unix shell, [vim](http://www.vim.org) has quickly become my editor of choice. once you start to master the movements and operators you quickly begin manipulating, not just editing source code files.

when you learn vim it's best to use a more vanilla config. if helps you focus on learning the editor and not the plugins. these are also great for [remote machines](http://git.io/.vimrc-min). but for your local dev environment, vim's vast and powerful plugin system can add many great features. i try to keep my editor slim and fast, but i find myself loving these plugins:

- [vundle](https://github.com/gmarik/vundle.vim) - to manage other plugins
- [you complete me](https://github.com/Valloric/YouCompleteMe) - the best completion system
- [php complete](https://github.com/shawncplus/phpcomplete.vim) - extended php completions
- [syntastic](https://github.com/scrooloose/syntastic) - syntax linting
- [git gutter](https://github.com/airblade/vim-gitgutter) - git diff in the gutter
- [match it](https://github.com/isa/vim-matchit) - extended word and regex matching
- [lightline](https://github.com/itchyny/lightline.vim) - custom status line (for much rice)
- [fugitive](https://github.com/tpope/vim-fugitive) - fast git integration

#previews
![](https://raw.githubusercontent.com/xero/dotfiles/master/previews/coils.png)
- [herbstluftwm](http://git.io/.herbstluftwm)
- [urxvt](http://git.io/.urxvt)
- [zsh](http://git.io/.zsh)
- [tmux](http://git.io/.tmux)
- [vim](http://git.io/.vim)
- [ncmpcpp](http://git.io/.ncmpcpp)

![](https://raw.githubusercontent.com/xero/dotfiles/master/previews/blizzard-orb.png)
- [blizzard orb xcolors](https://github.com/xero/dotfiles/blob/master/urxvt/blizzard-orb.Xcolors)

![](https://raw.githubusercontent.com/xero/dotfiles/master/previews/sysinfo.png)
- [sysinfo](http://git.io/v4aH5)

![](https://raw.githubusercontent.com/xero/dotfiles/master/previews/neongold.png)
- [irssi](http://git.io/.irssi)

![](https://raw.githubusercontent.com/xero/dotfiles/master/previews/scrot_converge.png)

![](https://raw.githubusercontent.com/xero/dotfiles/master/previews/scrot_nightcity-1.png)
- [sysinfo](http://git.io/.sysinfo)

![](https://raw.githubusercontent.com/xero/dotfiles/master/previews/scrot_nightcity-2.png)
- [sublime greybeard theme](http://git.io/sublimegreybeard)

![](https://raw.githubusercontent.com/xero/dotfiles/master/previews/scrot_nightcity-3.png)
- [chroimum with cathexis gtk](http://git.io/cathexis) & [greybeard devtools](http://git.io/greybeard-devtools)
- figlet [-f 3d](http://git.io/3d) webdev | lolcat

![](https://raw.githubusercontent.com/xero/dotfiles/master/previews/scrot_nightcity-5.png)
- [color scripts](http://git.io/.fun)
