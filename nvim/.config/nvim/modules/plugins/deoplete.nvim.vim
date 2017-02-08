"deoplete
let g:deoplete#enable_at_startup = 1

let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
  \]

let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.elm = '\.'

let g:deoplete#ignore_sources = {}
" let g:deoplete#ignore_sources._ = ['buffer', 'member', 'tag', 'file', 'neosnippet']

call deoplete#custom#set('_', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#set('_', 'converters', ['converter_remove_paren'])
call deoplete#custom#set('_', 'disabled_syntaxes', ['Comment', 'String'])

" Let <Tab> also do completion
inoremap <silent><expr> <Tab>
    \ pumvisible() ? "\<C-n>" :
    \ deoplete#mappings#manual_complete()

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
