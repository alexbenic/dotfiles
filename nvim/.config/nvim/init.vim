"relative path to the config files
function! Dot(path)
    return '~/.config/nvim/' . a:path
endfunction

"Load config files
for file in split(glob(Dot('modules/*.vim')), '\n')
  execute 'source' file
endfor
