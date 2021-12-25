"laod plugins from plugin list
call plug#begin('~/.config/nvim/plugged')

"general#qol
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'
Plug 'romainl/vim-qlist'
Plug 'romainl/vim-qf', {'commit': '7f9bc496'}
Plug 'Valloric/ListToggle'

"general#editing
Plug 'terryma/vim-expand-region'
Plug 'suy/vim-context-commentstring'

"general#lang
Plug 'elixir-editors/vim-elixir', {'for': 'elixir'}
Plug 'rescript-lang/vim-rescript', {'tag': 'v1.2.0', 'for': 'rescript'}

"util#general
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-eunuch'
Plug 'wellle/targets.vim'
Plug 'justinmk/vim-sneak'
Plug 'justinmk/vim-dirvish'
Plug 'airblade/vim-gitgutter'

"util#make
Plug 'w0rp/ale'

"other#experimental
Plug 'nvim-treesitter/nvim-treesitter', { 'commit': '3c07232'}
Plug '~/projects/nvim-lspconfig'

"other#writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

"other#editorconfig
Plug 'editorconfig/editorconfig-vim'

call plug#end()
