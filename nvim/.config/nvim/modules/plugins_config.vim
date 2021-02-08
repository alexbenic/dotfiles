"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:
"    -> language-server
"    -> treesitter
"    -> ale
"    -> projections
"    -> editorconfig
"    -> vim-easy-align
"    -> vim-sneak
"    -> vim-tmux-navigator
"    -> fugitive
"    -> git-gutter
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => language-server
""""""""""""""""""""""""""""""
lua << EOF
require'lspconfig'.tsserver.setup{}
require'lspconfig'.elixirls.setup{}
require'lspconfig'.rescriptls.setup{}
EOF
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> rn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

""""""""""""""""""""""""""""""
" => treesitter
""""""""""""""""""""""""""""""
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
}
EOF

""""""""""""""""""""""""""""""
" => le
""""""""""""""""""""""""""""""
let g:ale_linters = {
      \'javascript' : ['eslint', 'flow'],
      \'typescript' : ['tslint', 'tsserver', 'prettier'],
      \'elixir' : ['credo', 'elixir-ls', 'mix'],
      \'reason' : ['marlin', 'ols'],
  \}

let g:ale_fixers = {
      \'javascript' : ['prettier', 'eslint'],
      \'json' : ['prettier'],
      \'scss' : ['prettier'],
      \'jsx' : ['prettier', 'eslint'],
      \'typescript' : ['prettier', 'tslint'],
      \'rescript' : ['refmt'],
      \'elixir' : ['mix_format'],
  \}

" elixir
let g:ale_elixir_elixir_ls_release = expand("~/.cache/nvim/lspconfig/elixirls/elixir-ls/release/")
" autocomplete
let g:ale_completion_enabled = 0
" show errors in quicklist
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
" ale signs
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
" virtual buffer
let g:ale_virtualtext_cursor = 1
" err & warnings list
let g:ale_open_list = 'on_save'
let g:ale_list_window_size = 10
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END


nnoremap <Leader>? :ALEDetail<CR>
nnoremap <silent><Leader>ff :ALEFix<CR>

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
" => mucomplete
""""""""""""""""""""""""""""""
set completeopt+=menuone
set completeopt+=noselect
" set shortmess+=c
let g:mucomplete#can_complete = {}
let g:mucomplete#enable_at_startup = 1
let g:mucomplete#chains = {'default': ['omni']}

""""""""""""""""""""""""""""""
" => editorconfig
""""""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

""""""""""""""""""""""""""""""
" => vim-easy-align
""""""""""""""""""""""""""""""
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

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
let g:tmux_navigator_disable_when_zoomed = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gs :Gst<CR>
nnoremap <Leader>gr :Gremove<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gm :Gmove
nnoremap <Leader>gp :Ggrep
nnoremap <Leader>gR :Gread<CR>
nnoremap <Leader>gd :Gdiff<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => git-gutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>gg :GitGutterToggle<cr>
