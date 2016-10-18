"leader
let mapleader = "\<Space>"
map <Leader>p "+gP
map <Leader>y "+y
"close {window, buffer}
nnoremap <Leader>q ZZ<CR>
nnoremap <Leader>bd :bd<CR>
"H = ^ -- L = $
noremap H ^
noremap L $
"annoying
map q: :q
nnoremap Q <nop>
"try
nmap gp `[v`]
"nerdtree
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
" util
cmap w!! %!sudo tee > /dev/null %
cnoremap %% <C-R>=expand('%:p:h').'/'<CR>
noremap <Leader>cd :cd %:p:h<CR>
map <Leader>e :e %%
"map <Leader>t :tabe %%
"map <Leader>s :split %%
" util#text
map <Leader>T :%s/\s\+$//e<CR>
map <Leader>U :g/^$/d<CR>
map <Leader>R :retab<CR>
nnoremap <silent> <leader>b :nohlsearch<CR>
"fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gr :Gremove<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gm :Gmove
nnoremap <Leader>gp :Ggrep
nnoremap <Leader>gR :Gread<CR>
nnoremap <Leader>gg :Git
nnoremap <Leader>gd :Gdiff<CR>
"misc
nnoremap <Leader>w :w<CR>
nmap <Leader><Leader> V
"open | source vimrc
nnoremap <Leader>ev :e $MYVIMRC<CR>
nnoremap <Leader>es :so $MYVIMRC<CR>
" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
