vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local ft = vim.opt_local.filetype:get()

    -- don't apply to git
    if ft:match("commit") or ft:match("rebase") then
      return
    end

    -- get position of last saved edit
    local markpos = vim.api.nvim_buf_get_mark(0, '"')
    local line = markpos[1]
    local col = markpos[2]
    -- if in range, go there
    if (line > 1) and (line <= vim.api.nvim_buf_line_count(0)) then
      vim.api.nvim_win_set_cursor(0, { line, col })
    end
  end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function()
    return require("lint").try_lint()
  end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = false })
    end
  end,
})

