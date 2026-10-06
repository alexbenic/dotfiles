local languages = {
  "bash",
  "c",
  "cpp",
  "css",
  "diff",
  "dockerfile",
  "eex",
  "elixir",
  "gitcommit",
  "go",
  "heex",
  "html",
  "javascript",
  "json",
  "lua",
  "python",
  "rust",
  "toml",
  "tsx",
  "typescript",
  "yaml",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install(languages)
      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("treesitter_start", { clear = true }),
        callback = function(ev)
          if pcall(vim.treesitter.start, ev.buf) then
            vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            vim.wo[0][0].foldmethod = "expr"
            vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
          end
        end,
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    config = function()
      require("nvim-treesitter-textobjects").setup({
        select = { lookahead = true },
        move = { set_jumps = true },
      })
      local select = require("nvim-treesitter-textobjects.select")
      local move = require("nvim-treesitter-textobjects.move")
      local swap = require("nvim-treesitter-textobjects.swap")
      for lhs, spec in pairs({
        af = { "@function.outer", "Outer function" },
        ["if"] = { "@function.inner", "Inner function" },
        ac = { "@class.outer", "Outer class" },
        ic = { "@class.inner", "Inner class" },
      }) do
        vim.keymap.set({ "x", "o" }, lhs, function()
          select.select_textobject(spec[1], "textobjects")
        end, { desc = spec[2] })
      end
      vim.keymap.set({ "n", "x", "o" }, "]m", function() move.goto_next_start("@function.outer", "textobjects") end,
        { desc = "Next function start" })
      vim.keymap.set({ "n", "x", "o" }, "]M", function() move.goto_next_end("@function.outer", "textobjects") end,
        { desc = "Next function end" })
      vim.keymap.set({ "n", "x", "o" }, "[m", function() move.goto_previous_start("@function.outer", "textobjects") end,
        { desc = "Previous function start" })
      vim.keymap.set({ "n", "x", "o" }, "[M", function() move.goto_previous_end("@function.outer", "textobjects") end,
        { desc = "Previous function end" })
      vim.keymap.set("n", "<leader>a", function() swap.swap_next("@parameter.inner") end,
        { desc = "Swap parameter with next" })
      vim.keymap.set("n", "<leader>A", function() swap.swap_previous("@parameter.inner") end,
        { desc = "Swap parameter with previous" })
    end,
  },
  {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    keys = {
      { "gS", function() require("treesj").split() end, desc = "Split node" },
      { "gJ", function() require("treesj").join() end, desc = "Join node" },
    },
    opts = { use_default_keymaps = false },
  },
}
