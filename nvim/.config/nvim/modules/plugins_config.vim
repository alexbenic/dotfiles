"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:
"    -> language-client
"    -> ale
"    -> fzf
"    -> projections
"    -> neoformat
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
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ }

""""""""""""""""""""""""""""""
" => ale
""""""""""""""""""""""""""""""
let g:ale_linters = {
      \'javascript' : ['eslint', 'flow'],
      \'typescript' : ['tsserver', 'typecheck', 'tslint', 'prettier'],
      \'elm' : ['make'],
      \'nim' : ['nim check'],
      \'coffescript': ['coffelint'],
  \}

let g:ale_fixers = {
      \'javascript' : ['prettier', 'eslint'],
      \'jsx' : ['prettier', 'eslint'],
      \'typescript' : ['prettier', 'tslint'],
  \}

nnoremap <silent><Leader>ff :ALEFix<CR>
" show errors in quicklist
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
" status line format
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
" ale signs
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

nnoremap <Leader>? :ALEDetail<CR>

""""""""""""""""""""""""""""""
" => fzf
""""""""""""""""""""""""""""""
set rtp+=~/.fzf
let g:fzf_tags_command = 'ctags -R'
"make fzf respect .gitignore - https://github.com/junegunn/fzf.vim/issues/121
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
" keybindings
nnoremap <silent> <C-p>                 :Files<CR>
nnoremap <silent> <Leader><Enter>       :Buffers<CR>
nnoremap <silent> <Leader>a             :Ag<CR>
nnoremap <silent> <Leader>ag            :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader><Leader>      :BLines<CR>
nnoremap <silent> <Leader>ta            :Tags<CR>
nnoremap <silent> <Leader>l             :Lines<CR>
nnoremap <silent> <Leader>bc            :BCommits<CR>
nnoremap <silent> <Leader>gs            :GFiles?<CR>

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
" => deoplete
""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1

""""""""""""""""""""""""""""""
" => nvim-typescript
""""""""""""""""""""""""""""""
let g:nvim_typescript#type_info_on_hold = 1
let g:nvim_typescript#default_mappings = 1

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
let g:elm_format_autosave = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => git-gutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>gg :GitGutterToggle<cr>
