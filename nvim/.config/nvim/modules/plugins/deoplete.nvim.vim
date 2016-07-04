"deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1

" Let <Tab> also do completion
inoremap <silent><expr> <Tab>
    \ pumvisible() ? "\<C-n>" :
    \ deoplete#mappings#manual_complete()

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
