set completeopt+=noselect
" path to gocode
let g:deoplete#sources#go#gocode_binary = $GOPATH . '/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

"cache
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#json_directory = Dot('/temp/deoplete/go/$GOOS_$GOARCH')

"cgo
let g:deoplete#sources#go#cgo = 1
let g:deoplete#sources#go#cgo#libclang_path = '/usr/lib/libclang.so'
