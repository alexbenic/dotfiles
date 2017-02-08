"general#eyecandy
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"general#qol
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'

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
"util#wiki
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'
"util#make
" Plug 'neomake/neomake'
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


"lang#javascript
Plug 'othree/jspc.vim',                        { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx',                            { 'for': ['javascript', 'javascript.jsx'] }
Plug 'elzr/vim-json',                          { 'for': ['javascript', 'javascript.jsx'] }
Plug 'moll/vim-node',                          { 'for': 'javascript' }
Plug 'digitaltoad/vim-jade',                   { 'for': 'pug' }
Plug 'pangloss/vim-javascript',                { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
"lang#python
Plug 'davidhalter/jedi-vim'
"lang#elm
" Plug 'ElmCast/elm-vim', { 'for': 'elm' }
Plug 'ElmCast/elm-vim'
"lang#rust
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
"lang#elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
"lang#go
Plug 'fatih/vim-go', { 'for': 'go' }
"lang#html
Plug 'othree/html5.vim',       { 'for': 'html' }
Plug 'mattn/emmet-vim'
"lang#css
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'othree/csscomplete.vim'
"other#writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
"other#editorconfig
Plug 'editorconfig/editorconfig-vim'
