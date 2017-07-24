"general#eyecandy
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
"general#qol
Plug 'mhinz/vim-startify'
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
"util#wiki
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'
Plug 'blindFS/vim-taskwarrior'
"util#make
Plug 'w0rp/ale'
"util#test
Plug 'janko-m/vim-test'
"util#snippets
Plug 'SirVer/ultisnips'
      \ | Plug 'honza/vim-snippets'
"util#completion
Plug 'Shougo/deoplete.nvim',                      { 'do' : ':UpdateRemotePlugins' }
      \ | Plug 'carlitux/deoplete-ternjs',        { 'for': 'javascript', 'do' : 'npm install -g tern' }
      \ | Plug 'zchee/deoplete-jedi',             { 'for': 'python', 'do' : 'pip install jedi' }
      \ | Plug 'zchee/deoplete-go',               { 'for': 'go', 'do' : 'make' }
      \ | Plug 'sebastianmarkow/deoplete-rust',   { 'for': 'rust' }
      \ | Plug 'zchee/deoplete-clang',     { 'for': 'c' }
"util#ctrl-p
Plug 'junegunn/fzf',              { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"lang
Plug 'sheerun/vim-polyglot'
"lang#elixir
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
"lang#go
Plug 'fatih/vim-go',            {'for' : 'go'}
"lang#moonscript
Plug 'leafo/moonscript-vim'
"other#writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
"other#editorconfig
Plug 'editorconfig/editorconfig-vim'
