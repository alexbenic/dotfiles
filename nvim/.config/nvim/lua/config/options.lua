---------------------------------------------------------------
---> General
---------------------------------------------------------------
-- Sets how many lines of history VIM has to remember
vim.o.history = 1000

-- Numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- H split -> below, V split -> right
vim.o.splitbelow = true
vim.o.splitright = true

-- Folding
vim.o.foldenable = true
vim.o.foldmethod = "indent"
vim.o.foldnestmax = 10
vim.o.foldlevelstart = 10

vim.o.list = true
vim.o.listchars = "tab:▸.,trail:·,extends:❯,precedes:❮,nbsp:×"
vim.o.backspace = "eol,start,indent"
vim.o.whichwrap = "<,>,h,l"

-- Ignore case when searching
vim.o.ignorecase = true

-- When searching try to be smart about cases
vim.o.smartcase = true

-- Highlight search results
vim.o.hlsearch = true

-- Makes search act like search in modern browsers
vim.o.incsearch = true

-- Don't redraw while executing macros (good performance config)
vim.o.lazyredraw = true

-- Show matching brackets when text indicator is over them
vim.o.showmatch = true

-- Show maximum 10 items in pum buffer
vim.o.pumheight = 10

-- How many tenths of a second to blink when matching brackets
vim.o.mat = 2

-- Smarter line joins
vim.opt.formatoptions:append({ "j" })

-- Turn on the Wild menu
vim.o.wildmenu = true

-- but don't show these files
vim.o.wildignore = "*.o,*~,*.pyc,svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif"

-- Enable modeline
vim.o.modeline = true

---------------------------------------------------------------
---> Colors and Fonts
---------------------------------------------------------------

-- Pretty colors
vim.o.termguicolors = true
vim.cmd.colorscheme("despacio")

-- Set utf8 as standard encoding
vim.o.encoding = utf8

-- Use Unix as the standard file type
vim.o.ffs = "unix,dos,mac"

---------------------------------------------------------------
---> Files, backups and undo
---------------------------------------------------------------
vim.o.backup = false
vim.o.wb = false
vim.o.swapfile = false

---------------------------------------------------------------
---> Text, tab and indent related
---------------------------------------------------------------
-- Use spaces instead of tabs
vim.o.expandtab = true

-- Be smart when using tabs
vim.o.smarttab = true

-- 1 tab == 2 spaces
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

-- Linebreak on 500 characters
vim.o.lbr = true
vim.o.tw = 500

vim.o.ai = true -- Auto indent
vim.o.si = true -- Smart indent
vim.o.wrap = true -- Wrap lines
