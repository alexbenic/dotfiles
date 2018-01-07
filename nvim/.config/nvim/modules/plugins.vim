"laod plugins from plugin list
call plug#begin('~/.config/nvim/plugged')

"general#eyecandy
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'romainl/Apprentice', { 'branch': 'fancylines-and-neovim' }
"general#qol
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'cohama/lexima.vim' "this or auto-pairs

"util#general
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'wellle/targets.vim'
Plug 'airblade/vim-gitgutter'
Plug 'justinmk/vim-sneak'
Plug 'justinmk/vim-dirvish'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'majutsushi/tagbar'
Plug 'sbdchd/neoformat'
"util#make
Plug 'w0rp/ale'
"util#test
Plug 'janko-m/vim-test'
"util#snippets
Plug 'SirVer/ultisnips'
      \ | Plug 'honza/vim-snippets'
"util#ctrl-p
Plug 'junegunn/fzf',              { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"util#completion
Plug 'autozimu/LanguageClient-neovim', { 'tag': 'binary-*-x86_64-unknown-linux-musl' }
" IDE-like autocompletion without
Plug 'roxma/nvim-completion-manager'

"lang
Plug 'sheerun/vim-polyglot'
"lang#elixir
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
"lang#go
Plug 'fatih/vim-go',            { 'for' : 'go' }
"lang#moonscript
Plug 'leafo/moonscript-vim'
"lang#scheme
Plug 'kovisoft/slimv'

"other#writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
"other#editorconfig
Plug 'editorconfig/editorconfig-vim'
"other#tasks
Plug 'blindFS/vim-taskwarrior'

call plug#end()
