P = function(v)
  print(vim.inspect(v))
  return v
end

vim.o.grepprg = "rg --vimgrep"
vim.o.grepformat = "%f:%l:%c:%m,%f:%l:%m"

local function grep(opts)
  local command = vim.o.grepprg .. " " .. vim.fn.expandcmd(table.concat(opts, " "))
  return vim.fn.system(command)
end

vim.api.nvim_create_user_command("Grep", function(opts)
  return vim.cmd.cgetexpr(grep(opts.fargs))
end, {
  nargs = "*",
  complete = "file_in_path",
  bang = true,
})
