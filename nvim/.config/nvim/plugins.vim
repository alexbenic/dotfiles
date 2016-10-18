"Snippets
Plug 'SirVer/ultisnips'
      \ | Plug 'honza/vim-snippets'
"Ctrl-P
Plug 'junegunn/fzf',              { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Eyecandy
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"General
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim',                      { 'do' : ':UpdateRemotePlugins' }
      \ | Plug 'carlitux/deoplete-ternjs',        { 'for': 'javascript', 'do' : 'npm install -g tern' }
      \ | Plug 'zchee/deoplete-go',               { 'for': 'go', 'do' : 'make' }
      \ | Plug 'mhartington/deoplete-typescript', { 'for': 'typescript' }
      \ | Plug 'sebastianmarkow/deoplete-rust',   { 'for': 'rust' }
      \ | Plug 'zchee/deoplete-clang',     { 'for': 'c' }

Plug 'scrooloose/nerdtree',                { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'justinmk/vim-sneak'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
"Plug 'Chiel92/vim-autoformat'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'wellle/targets.vim'
Plug 'editorconfig/editorconfig-vim'

"javascript
Plug 'othree/jspc.vim',                        { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx',                            { 'for': ['javascript', 'javascript.jsx'] }
Plug 'elzr/vim-json',                          { 'for': ['javascript', 'javascript.jsx'] }
Plug 'moll/vim-node',                          { 'for': 'javascript' }
Plug 'digitaltoad/vim-jade',                   { 'for': 'pug' }
Plug 'pangloss/vim-javascript',                { 'for': ['javascript', 'javascript.jsx'] }
Plug 'leafgarland/typescript-vim',             { 'for': 'typescript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }

"elm
"Plug 'ElmCast/elm-vim', { 'for': 'elm' }

Plug 'rust-lang/rust.vim', { 'for': 'rust' }

"go
Plug 'fatih/vim-go', { 'for': 'go' }

"other
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim',       { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'othree/csscomplete.vim'
"other#writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
