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
 tmux           > terminal multiplexer with custom status bar
 polybar        > fast and easy-to-use status bar
 i3             > tiling wm for Xorg server
 sway           > tiling wm for Wayland
 termite        > sourcerer terminal colors and keyboard settings
 nvim           > personal config for Neovim
 wallpaper      > the cool desktop background images i use
 zsh            > zshell settings, aliases, and custom prompts
```

## TOC
 - [managing](#managing)
 - [installing](#installing)
 - [how it works](#how-it-works)
 - [tl;dr](#tldr)
 - [previews](#previews)

## Managing
I manage mine with [gnu stow](http://www.gnu.org/software/stow/), a free, portable, lightweight symlink farm manager. this allows me to keep a versioned directory of all my config files that are virtually linked into place via a single command. this makes sharing these files among many users (root) and computers super simple. and does not clutter your home directory with version control files.

## Installing
stow is available for all linux and most other unix like distributions via your package manager.

- `sudo pacman -S stow`
- `sudo apt-get install stow`
- `brew install stow`

or clone it [from source](https://savannah.gnu.org/git/?group=stow) and [build it](http://git.savannah.gnu.org/cgit/stow.git/tree/INSTALL) yourself.

## TL;DR
navigate to your home directory

`cd ~`

clone the repo:

`git clone http://github.com/alexbenic/dotfiles`

enter the dotfiles directory

`cd dotfiles`

install the zsh settings

`stow zsh`

install zsh settings for the root user

`sudo stow zsh -t /root`

install termite config

`stow termite`

uninstall termite theme

`stow -D termite`

etc, etc, etc...

## My shell
i prefer a minimal setup, and choose to interact with my operating system via the so-called "terminal" or "command line", (read that quoting sarcastically) over a gui interface 2 times out of 3. with the web browser and video player among the noted outliers. in my opinion, using your computer should be a very personal experience. your colors, aliases, key-bindings, etc meticulously crafted to your exacting specifications. so for me, the unix shell is the most important part of my environment.

## Previews

[termite](./preview/termite.png)

[wallpaper](./preview/wallpaper.png)

[nvim](./preview/nvim.png)
