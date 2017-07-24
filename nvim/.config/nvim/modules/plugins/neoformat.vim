autocmd BufWritePre *.js Neoformat

"general
let g:neoformat_basic_format_trim = 1
let g:neoformat_only_msg_on_error = 1


"javascript
let g:neoformat_javascript_prettier = {
      \ 'exe': 'prettier',
      \ 'args': ['--parser flow', '--single-quote', '--trailing-comma es5', '--no-semi'],
      \ 'stdin': 1,
      \}

let g:neoformat_enabled_javascript = ['prettier']
