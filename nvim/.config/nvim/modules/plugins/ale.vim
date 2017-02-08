let g:ale_linters = {
      \'javascript' : ['eslint'],
      \'elm' : ['make'],
      \}

" show errors in quicklist
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

" status line format
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

" ale signs
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
