"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:
"    -> language-client
"    -> ale
"    -> fzf
"    -> projections
"    -> neoformat
"    -> vim-test
"    -> deoplete
"    -> nvim-typescript
"    -> vim-airline
"    -> tagbar
"    -> editorconfig
"    -> vim-easy-align
"    -> vim-go
"    -> vim-sneak
"    -> vim-tmux-navigator
"    -> fugitive
"    -> elm-vim
"    -> git-gutter
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => language-client
""""""""""""""""""""""""""""""
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ }

""""""""""""""""""""""""""""""
" => ale
""""""""""""""""""""""""""""""
let g:ale_linters = {
      \'javascript' : ['eslint', 'flow'],
      \'typescript' : ['tslint', 'tsserver', 'prettier'],
      \'elm' : ['make'],
      \'nim' : ['nim check'],
      \'coffescript': ['coffelint'],
      \'reason' : ['marlin', 'ols'],
  \}

let g:ale_fixers = {
      \'javascript' : ['prettier', 'eslint'],
      \'json' : ['prettier'],
      \'scss' : ['prettier'],
      \'jsx' : ['prettier', 'eslint'],
      \'typescript' : ['prettier', 'tslint'],
      \'solidity' : ['solium'],
      \'rust' : ['rustfmt'],
      \'reason' : ['refmt'],
  \}

" autocomplete
let g:ale_completion_enabled = 1                             
" show errors in quicklist
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
" status line format
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
" ale signs
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
" virtual buffer
let g:ale_virtualtext_cursor = 1

nnoremap <Leader>? :ALEDetail<CR>
nnoremap <C-]> :ALEGoToDefinition<CR>
nnoremap <silent><Leader>ff :ALEFix<CR>

""""""""""""""""""""""""""""""
" => fzf
""""""""""""""""""""""""""""""
set rtp+=~/.fzf
let g:fzf_tags_command = 'ctags -R'
"make fzf respect .gitignore - https://github.com/junegunn/fzf.vim/issues/121
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" fzfmru
command! FZFMru call fzf#run({
\ 'source':  reverse(s:all_files()),
\ 'sink':    'edit',
\ 'options': '-m -x +s',
\ 'down':    '40%' })

function! s:all_files()
  return extend(
  \ filter(copy(v:oldfiles),
  \        "v:val !~ 'fugitive:\\|term:\\|NERD_tree\\|^/tmp/\\|.git/'"),
  \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
endfunction

" keybindings
nnoremap <silent> <C-p>                 :Files<CR>
nnoremap <silent> <Leader>p             :Files <C-R>=expand('%:h')<CR><CR>
nnoremap <silent> <Leader><Enter>       :Buffers<CR>
nnoremap <silent> <Leader>f             :Ag<CR>
nnoremap <silent> <Leader>ag            :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader><Leader>      :BLines<CR>
nnoremap <silent> <Leader>ta            :Tags<CR>
nnoremap <silent> <Leader>l             :Lines<CR>
nnoremap <silent> <Leader>bc            :BCommits<CR>
nnoremap <silent> <Leader>gs            :GFiles?<CR>
nnoremap <silent> <Leader>mr            :FZFMru<CR>

""""""""""""""""""""""""""""""
" => projections
""""""""""""""""""""""""""""""
let g:projectionist_heuristics = {
      \ '*.component.js': {
      \   'alternate': [
      \     '{dirname}/{basename}.spec.js',
      \     '{dirname}/{basename}.test.js',
      \   ],
      \   'type': 'source',
      \ },
      \ '*.spec.js': {
      \   'alternate': [
      \     '{dirname}/{basename}.component.js',
      \     '{dirname}/{basename}.js',
      \   ],
      \   'type': 'test',
      \ }
      \ }

nnoremap <leader>aa :A<CR>
nnoremap <leader>dc :Pcd<CR>
nnoremap <leader>rd :Pcd

""""""""""""""""""""""""""""""
" => neoformat
""""""""""""""""""""""""""""""
"auto
autocmd BufWritePre *.js Neoformat
autocmd BufWritePre *.vue Neoformat
autocmd BufWritePre *.json Neoformat
autocmd BufWritePre *.rs Neoformat

"general
let g:neoformat_basic_format_trim = 1
let g:neoformat_only_msg_on_error = 1
"javascript
let g:neoformat_javascript_prettier = {
      \ 'exe': 'prettier',
      \ 'args': ['--single-quote', '--trailing-comma es5'],
      \ 'stdin': 1,
      \}
"vue
let g:neoformat_vue_prettier = {
      \ 'exe': 'prettier',
      \ 'args': ['--single-quote', '--trailing-comma es5'],
      \ 'stdin': 1,
      \}
" json
let g:neoformat_json_prettier = {
      \ 'exe': 'prettier',
      \ 'args': ['--parser json'],
      \ 'stdin': 1,
      \}
let g:neoformat_typescript_prettier = {
      \ 'exe': 'prettier',
      \ 'args': ['--parser typescript', '--trailing-comma es5'],
      \ 'stdin': 1,
      \}

let g:neoformat_rust_rustfmt = {
      \ 'exe': 'rustmft',
      \ 'stdin': 1,
      \}

let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_vue = ['prettier']
let g:neoformat_enabled_json = ['prettier']
let g:neoformat_enabled_rust = ['rustfmt']

""""""""""""""""""""""""""""""
" => vim-test
""""""""""""""""""""""""""""""
let test#strategy = "neoterm"
" vertical split instead of the default horizontal
let g:neoterm_default_mod = "vertical"
" pretty much essential: by default in terminal mode, you have to press ctrl-\-n to get into normal mode
" ain't nobody got time for that
" tnoremap <Esc> <C-\><C-n>

nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g

""""""""""""""""""""""""""""""
" => deoplete
""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1

""""""""""""""""""""""""""""""
" => nvim-typescript
""""""""""""""""""""""""""""""
" let g:nvim_typescript#type_info_on_hold = 1
" let g:nvim_typescript#default_mappings = 1

""""""""""""""""""""""""""""""
" => vim-airline
""""""""""""""""""""""""""""""
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
let g:airline#extensions#tabline#enabled = 1


""""""""""""""""""""""""""""""
" => tagbar
""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>

""""""""""""""""""""""""""""""
" => editorconfig
""""""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

""""""""""""""""""""""""""""""
" => vim-filer
""""""""""""""""""""""""""""""
let g:vimfiler_as_default_explorer = 1

""""""""""""""""""""""""""""""
" => vim-easy-align
""""""""""""""""""""""""""""""
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

let g:go_list_type = "quickfix"
" let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"
let g:go_auto_type_info = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-sneak
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
"streak mode
let g:sneak#streak = 1
"clever s
let g:sneak#s_next = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-tmux-navigator
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-\> :TmuxNavigatePrevious<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gr :Gremove<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gm :Gmove
nnoremap <Leader>gp :Ggrep
nnoremap <Leader>gR :Gread<CR>
nnoremap <Leader>g :Git
nnoremap <Leader>gd :Gdiff<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => elm-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <M-o>       <Esc>o
let g:ragtag_global_maps = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => elm-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:elm_format_autosave = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => git-gutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>gg :GitGutterToggle<cr>
