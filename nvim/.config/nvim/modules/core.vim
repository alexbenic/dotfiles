set noswapfile
set undofile
set undodir=~/.config/nvim/temp/undodir
set autowrite

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"tmux mappings  -- TODO: move to separate file
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-\> :TmuxNavigatePrevious<cr>

"wiki TODO:move to separate file
let g:vimwiki_list = [{
      \ 'path': '~/vimwiki',
      \ 'nested_syntexes': {
      \   'ruby': 'ruby',
      \   'elixir': 'elixir',
      \   'javascript': 'javascript',
      \   'bash': 'sh',
      \  },
      \  'syntax': 'markdown',
      \  'ext': '.md'
      \ }]

"let g:python3_host_prog='/usr/lib/python3.5/site-packages/neovim/api/nvim.py'
