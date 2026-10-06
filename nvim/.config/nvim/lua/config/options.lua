---------------------------------------------------------------
---> General
---------------------------------------------------------------
-- Numbers
vim.o.number = true
vim.o.relativenumber = true

-- H split -> below, V split -> right
vim.o.splitbelow = true
vim.o.splitright = true

-- Folding
vim.o.foldmethod = "indent"
vim.o.foldnestmax = 10
vim.o.foldlevelstart = 10

vim.o.list = true
vim.o.listchars = "tab:▸.,trail:·,extends:❯,precedes:❮,nbsp:×"
vim.o.whichwrap = "<,>,h,l"

-- Ignore case when searching
vim.o.ignorecase = true

-- When searching try to be smart about cases
vim.o.smartcase = true

-- Don't redraw while executing macros (good performance config)
vim.o.lazyredraw = true

-- Show matching brackets when text indicator is over them
vim.o.showmatch = true

-- Show maximum 10 items in pum buffer
vim.o.pumheight = 10

-- How many tenths of a second to blink when matching brackets
vim.o.mat = 2

-- Don't show these files in the wild menu
vim.o.wildignore = "*.o,*~,*.pyc,svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif"

---------------------------------------------------------------
---> Colors and Fonts
---------------------------------------------------------------

-- Pretty colors
vim.o.termguicolors = true
vim.cmd.colorscheme("despacio")

---------------------------------------------------------------
---> Files, backups and undo
---------------------------------------------------------------
-- Use Unix as the standard file type
vim.o.ffs = "unix,dos,mac"

vim.o.backup = false
vim.o.wb = false
vim.o.swapfile = false

---------------------------------------------------------------
---> Text, tab and indent related
---------------------------------------------------------------
-- Use spaces instead of tabs
vim.o.expandtab = true

-- 1 tab == 2 spaces
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

-- Linebreak on 500 characters
vim.o.lbr = true
vim.o.tw = 500
