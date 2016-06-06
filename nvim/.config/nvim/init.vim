"=====================================================================
" PLUGINS
"=====================================================================
call plug#begin('~/.vim/plugged')

  "===================================================================
  " Snippets
  "===================================================================
  Plug 'Shougo/neosnippet.vim'
        \ | Plug 'Shougo/neosnippet-snippets'
        \ | Plug 'honza/vim-snippets'

  "===================================================================
  " Auto-completion
  "===================================================================
  Plug 'Shougo/deoplete.nvim'
  Plug 'ternjs/tern_for_vim',       { 'do': 'npm install' }

  "===================================================================
  " FZF
  "===================================================================
  Plug 'junegunn/fzf',              { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  "===================================================================
  " Visual
  "===================================================================
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  "===================================================================
  " Util
  "===================================================================
  Plug 'neomake/neomake'
  Plug 'scrooloose/nerdtree',       { 'on':  'NERDTreeToggle' }
  Plug 'scrooloose/nerdcommenter'
  Plug 'jiangmiao/auto-pairs'
  Plug 'easymotion/vim-easymotion'
  Plug 'ervandew/supertab'
  Plug 'terryma/vim-expand-region'
  Plug 'junegunn/vim-easy-align'
  Plug 'Chiel92/vim-autoformat'
  Plug 'majutsushi/tagbar'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-endwise',         { 'for': 'bash, ruby'}

  "===================================================================
  " Lang
  "===================================================================
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-rails',           { 'for' : 'ruby' }
  Plug 'mattn/emmet-vim',           { 'for' : 'html' }

call plug#end()


"=====================================================================
" GENERAL
"=====================================================================
set number
set relativenumber
"folding
set foldmethod=indent
set foldnestmax=10
set foldenable
set foldlevelstart=10
"tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab smarttab
set autoindent
"utl
set wildmenu
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,node_modules/*
set showmatch
set pastetoggle=<F2>
cmap w!! %!sudo tee > /dev/null %
map <Leader>cd :cd %:p:h<CR>
"visual
set vb
set ruler
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
set splitbelow
set splitright

"misc
set hidden
set spelllang=en
"searching
set incsearch
set ignorecase
set smartcase
set hlsearch

"color
colorscheme Tommorow-Night

"=====================================================================
" KEYBINDINGS
"=====================================================================
let mapleader = "\<Space>"
map <Leader>v "+gP
map <Leader>c "+y
"H = ^ -- L = $
noremap H ^
noremap L $
"annoying
map q: :q
nnoremap Q <nop>
"move-windows
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
"nerdtree
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>b :nohlsearch<CR>
" text util
map <Leader>T :%s/\s\+$//e<CR>
map <Leader>U :g/^$/d<CR>
map <Leader>R :retab<CR>
" autocmd BufWritePre * :%s/\s\+$//e
"fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gr :Gremove<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap Leader>gb :Gblame<CR>
nnoremap <Leader>gm :Gmove
nnoremap <Leader>gp :Ggrep
nnoremap <Leader>gR :Gread<CR>
nnoremap <Leader>gg :Git
nnoremap <Leader>gd :Gdiff<CR>
"misc
nmap <Leader>l :set list!<CR>
nmap <silent> <Leader>s :set spell!<CR>
nnoremap <Leader>w :w<CR>
"nmap <Leader><Leader> V
" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"=====================================================================
" CONFIG
"=====================================================================
  "=====================================================================
  " Plugin: Neosnippet
  "=====================================================================
  let g:neosnippet#enable_snipmate_compatibility = 1

  "=====================================================================
  " Plugin: Emmet
  "=====================================================================
  let g:user_emmet_install_global = 0

  "=====================================================================
  " Plugin: FZF
  "=====================================================================
  set rtp+=~/.fzf
  let g:fzf_tags_command = 'ctags -R'

  let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }

  nnoremap <silent> <C-p>           :Files<CR>
  nnoremap <silent> <Leader><Enter> :Buffers<CR>
  nnoremap <silent> <Leader>C       :Colors<CR>
  nnoremap <silent> <Leader>a       :Ag<CR>
  nnoremap <silent> <Leader>t       :Tags<CR>

  "=====================================================================
  " Plugin: Neomake
  "=====================================================================
  "todo: fix this
  let g:neomake_tavascript_eslint_maker = {
      \ 'args': ['--verbose'],
      \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
      \ }
  let g:neomake_javascript_enabled_makers = ['eslint']

  "=====================================================================
  " Plugin: Deoplete
  "=====================================================================
  "todo: fix
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#disable_auto_complete = 1
  let g:SuperTabDefaultCompetionType = "<C-n>"
  autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

  "=====================================================================
  " Plugin: Tern
  "=====================================================================
  let g:tern_show_argument_hints   = 'on_hold'
  let g:tern_show_signature_in_pum = 1

  "=====================================================================
  " Plugin: Neosnippet
  "=====================================================================
  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)

  "=====================================================================
  " Plugin: Nerdtree
  "=====================================================================
  let NERDTreeChDirMode=2
  let NERDTreeMinimalUI=1

  "=====================================================================
  " Plugin: Airline
  "=====================================================================
  let g:airline_powerline_fonts=1

  if !exists('g:airline_symbols')
        let g:airline_symbols = {}
  endif
  let g:airline_symbols.space = "\ua0"
  "" powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''

  "=====================================================================
  " Plugin: Expand region
  "=====================================================================
  vmap v <Plug>(expand_region_expand)
  vmap <C-v> <Plug>(expand_region_shrink)

  "=====================================================================
  " Plugin: Easy align
  "=====================================================================
  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)

  "=====================================================================
  " Plugin: Easy align
  "=====================================================================
  nmap <F8> :TagbarToggle<CR>

"=====================================================================
" AUTO
"=====================================================================
augroup omnifuncs
  autocmd!
  autocmd FileType css
        \ setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown
        \ setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript
        \ setlocal omnifunc=tern#Complete
augroup end


