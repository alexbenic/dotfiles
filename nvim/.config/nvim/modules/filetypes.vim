"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
autocmd FileType javascript.jsx setlocal omnifunc=LanguageClient#complete
" <leader>ld to go to definition
autocmd FileType javascript nnoremap <buffer>
  \ <leader>ld :call LanguageClient_textDocument_definition()<cr>
" <leader>lh for type info under cursor
autocmd FileType javascript nnoremap <buffer>
  \ <leader>lh :call LanguageClient_textDocument_hover()<cr>
" <leader>lr to rename variable under cursor
autocmd FileType javascript nnoremap <buffer>
  \ <leader>lr :call LanguageClient_textDocument_rename()<cr>
" <leader>lf to fuzzy find the symbols in the current document
autocmd FileType javascript nnoremap <buffer>
  \ <leader>lf :call LanguageClient_textDocument_documentSymbol()<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Typescript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType typescript setlocal omnifunc=LanguageClient#complete
autocmd FileType typescript.jsx setlocal omnifunc=LanguageClient#complete
" <leader>ld to go to definition
autocmd FileType typescript nnoremap <buffer>
  \ <leader>ld :call LanguageClient_textDocument_definition()<cr>
" <leader>lh for type info under cursor
autocmd FileType typescript nnoremap <buffer>
  \ <leader>lh :call LanguageClient_textDocument_hover()<cr>
" <leader>lr to rename variable under cursor
autocmd FileType typescript nnoremap <buffer>
  \ <leader>lr :call LanguageClient_textDocument_rename()<cr>
" <leader>lf to fuzzy find the symbols in the current document
autocmd FileType typescript nnoremap <buffer>
  \ <leader>lf :call LanguageClient_textDocument_documentSymbol()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>i <Plug>(go-info)

autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TypeScript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter *.tsx set filetype=typescript.jsx
