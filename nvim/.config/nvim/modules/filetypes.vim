"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Typescript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter *.tsx set filetype=typescript.jsx
autocmd Filetype typescript setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd Filetype typescript.jsx setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd Filetype javascript setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd Filetype javascript.jsx setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd FileType javascript setlocal commentstring=//\ %s
autocmd FileType typescript setlocal commentstring=//\ %s
autocmd FileType typescript.jsx setlocal commentstring=//\ %s

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Elixir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter *.ex set filetype=elixir
autocmd BufEnter *.exs set filetype=elixir
autocmd Filetype elixir setlocal omnifunc=v:lua.vim.lsp.omnifunc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Reason
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype rescript setlocal omnifunc=v:lua.vim.lsp.omnifunc
