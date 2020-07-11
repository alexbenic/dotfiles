"laod plugins from plugin list
call plug#begin('~/.config/nvim/plugged')

"general#eyecandy
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'romainl/Apprentice', { 'branch': 'fancylines-and-neovim' }
Plug 'sjl/badwolf'
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
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
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
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" IDE-like autocompletion without
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'lifepillar/vim-mucomplete'

"lang
Plug 'sheerun/vim-polyglot'
"lang#vue
Plug 'posva/vim-vue'
"lang#elixir
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
"lang#go
Plug 'fatih/vim-go',            { 'for' : 'go' }
"lang#typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'suy/vim-context-commentstring'
"lang#reasonml
Plug 'reasonml-editor/vim-reason-plus'
" Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
" Plug '~/Projects/nvim-typescript', { 'do': './install.sh' }

"other#writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
"other#editorconfig
Plug 'editorconfig/editorconfig-vim'

call plug#end()
