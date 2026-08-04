local function map(mode, lhs, rhs, opts)
  -- set default value if not specify
  if opts.noremap == nil then
    opts.noremap = true
  end
  if opts.silent == nil then
    opts.silent = true
  end

  vim.keymap.set(mode, lhs, rhs, opts)
end

local function pwd()
  return vim.fn.expand("%:p:h") .. "/"
end

-- Set the <leader> to Space
vim.g.mapleader = " "

-- Fast saving
map("n", "<Leader>w", ":w!<CR>", {})

-- :w!! sudo saves the file
-- (useful for handling the permission-denied error)
map("c", "w!!", "%!sudo tee > /dev/null %", { silent = false })

-- %% expands to current dir in command mode
map("c", "%%", pwd, { noremap = true, silent = false, expr = true })

-- opens command mode to current dir
map("n", "<Leader>e", function()
  return ":e " .. pwd()
end, { silent = false, expr = true })

-- Move visual block
map("v", "J", ":m '>+1<CR>gv=gv", {})
map("v", "K", ":m '<-2<CR>gv=gv", {})

-- Buffer actions
map("n", "bd", "bd<CR>", {})
map("n", "ba", "bufdo bd<CR>", {})

-- Switch CWD to the directory of the open buffer
map("n", "cd", ":cd %:p:h<CR>:pwd<CR>", {})

-- Close window
map("n", "<Leader>qt", " ZZ<CR>", {})

-- Paste/Copy using system clipboard
map({ "n", "v" }, "<Leader>p", '"+gP', {})
map({ "n", "v" }, "<Leader>y", '"+y', {})

-- Format code
map("n", "<leader>fo", ":Format<CR>", {})
map("n", "<leader>fw", ":FormatWrite<CR>", {})

-- vim foo
map("n", "<leader>e", ":e<space>", { silent = false })
map("n", "<leader>v", ":vert sf<space>", { silent = false })
map("n", "<leader>b", ":b <C-d>", { silent = false })
map("n", "<leader>g", ":Grep<space>", { silent = false })
map("n", "<leader>f", ":find<space>", { silent = false })
map("n", "<leader>i", ":Ilist<space>", { silent = false })
map("n", "<leader>d", ":Dlist /<CR>", {})
map("n", "<leader>m", ":make<CR>", {})
map("n", "<leader>`", ":b#<CR>", {})

-- splitjoin
map("n", "gS", function() require("treesj").split() end, {})
map("n", "gJ", function() require("treesj").join() end, {})

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
  local conform = require("conform")

  conform.format({
    async = true,
    lsp_fallback = true,
  })
end, { desc = "Format file or range (in visual mode)" })
