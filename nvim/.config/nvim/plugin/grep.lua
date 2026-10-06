vim.o.grepprg = "rg --vimgrep"
vim.o.grepformat = "%f:%l:%c:%m,%f:%l:%m"

vim.api.nvim_create_user_command("Grep", function(opts)
  local cmd = vim.o.grepprg .. " " .. vim.fn.expandcmd(opts.args)
  vim.fn.setqflist({}, " ", {
    title = cmd,
    lines = vim.fn.systemlist(cmd),
    efm = vim.o.grepformat,
  })
  vim.cmd.cwindow()
end, {
  nargs = "+",
  complete = "file_in_path",
})
