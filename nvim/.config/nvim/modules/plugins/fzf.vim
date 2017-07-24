"fzf
set rtp+=~/.fzf
let g:fzf_tags_command = 'ctags -R'

"make fzf respect .gitignore - https://github.com/junegunn/fzf.vim/issues/121
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

nnoremap <silent> <C-p>           :Files<CR>
nnoremap <silent> <Leader><Enter> :Buffers<CR>
nnoremap <silent> <Leader>C       :Colors<CR>
nnoremap <silent> <Leader>a       :Ag<CR>
nnoremap <silent> <Leader>ta      :Tags<CR>
