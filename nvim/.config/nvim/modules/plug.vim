"laod plugins from plugin list
call plug#begin('~/.config/nvim/plugged')

execute 'source' Dot('plugins.vim')

call plug#end()

" load plugin config files if plugin in loaded
for file in split(glob(Dot('modules/plugins/*.vim')), '\n')
  let name = fnamemodify(file, ':t:r')

	if exists('g:plugs["' . name . '"]')
		exec 'source' file
  endif

endfor
