local function map(mode, lhs, rhs, desc, opts)
  opts = vim.tbl_extend("force", { silent = true, desc = desc }, opts or {})
  vim.keymap.set(mode, lhs, rhs, opts)
end

local function pwd()
  return vim.fn.expand("%:p:h") .. "/"
end

-- Fast saving
map("n", "<Leader>w", ":w!<CR>", "Save file")

-- %% expands to current dir in command mode
map("c", "%%", pwd, "Insert current file's directory", { silent = false, expr = true })

-- opens command mode to current dir
map("n", "<Leader>e", function()
  return ":e " .. pwd()
end, "Edit file in current file's directory", { silent = false, expr = true })

-- Move visual block
map("x", "J", ":m '>+1<CR>gv=gv", "Move selection down")
map("x", "K", ":m '<-2<CR>gv=gv", "Move selection up")

-- Buffer actions
map("n", "<leader>bd", "<cmd>bd<CR>", "Delete buffer")
map("n", "<leader>ba", "<cmd>bufdo bd<CR>", "Delete all buffers")

-- Switch CWD to the directory of the open buffer
map("n", "<leader>cd", "<cmd>cd %:p:h<CR><cmd>pwd<CR>", "Change directory to current file's directory")

-- Close window
map("n", "<Leader>x", "<cmd>x<CR>", "Save if changed and close window")

-- Paste/Copy using system clipboard
map({ "n", "x" }, "<Leader>p", '"+gP', "Paste from system clipboard")
map({ "n", "x" }, "<Leader>y", '"+y', "Copy to system clipboard")

-- vim foo
map("n", "<leader>v", ":vert sf<space>", "Find file in vertical split", { silent = false })
map("n", "<leader>bb", ":b <C-d>", "List buffers", { silent = false })
map("n", "<leader>g", ":Grep<space>", "Grep", { silent = false })
map("n", "<leader>f", ":find<space>", "Find file", { silent = false })
map("n", "<leader>i", ":Ilist<space>", "List include matches", { silent = false })
map("n", "<leader>d", ":Dlist /<CR>", "List definitions")
map("n", "<leader>m", ":make<CR>", "Run make")
map("n", "<leader>`", ":b#<CR>", "Alternate buffer")
