"neomake

"{{{ javascript
let g:neomake_tavascript_eslint_maker = {
  \ 'exe': 'eslint',
  \ 'args': ['--verbose'],
  \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
  \ }
let g:neomake_javascript_enabled_makers = ['eslint']
"}}}

"{{{general
let g:neomake_warnign_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }


let g:neomake_warnign_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }
"}}}

" vim: foldmethod=marker
