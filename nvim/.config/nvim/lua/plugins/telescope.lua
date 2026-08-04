local function map(mode, binding, fn, desc)
  return vim.keymap.set(mode, binding, fn, { desc = desc })
end

return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
          },
        },
      })

      require("telescope").load_extension("fzf")
    end,
    opts = {
      defaults = {
        file_ignore_patterns = { "node_modules", ".git" },
      },
    },
    init = function()
      local builtin = require("telescope.builtin")
      local themes = require("telescope.themes")

      map("n", "<leader><space>", builtin.buffers, "Search existing Buffers")
      map("n", "<leader>gf", builtin.git_files, "Search [G]it [F]iles")
      map("n", "<leader>sf", builtin.find_files, "[S]earch [F]iles")
      map("n", "<leader>sw", builtin.grep_string, "[S]earch current [W]ord")
      map("n", "<leader>sg", builtin.live_grep, "[S]earch by [G]rep")
      map("n", "<leader>sd", builtin.diagnostics, "[S]earch [D]iagnostics")
      map("n", "<leader>lr", builtin.lsp_references, "[L]sp [R]erefences")
      map("n", "<leader>/", function()
        builtin.current_buffer_fuzzy_find(themes.get_dropdown({
          previewer = false,
        }))
      end, "[/] Fuzzilty search in current buffer")
    end,
  },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
}
