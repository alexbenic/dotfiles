return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    cmd = "Telescope",
    keys = {
      { "<leader><space>", "<cmd>Telescope buffers<CR>", desc = "Search existing Buffers" },
      { "<leader>sG", "<cmd>Telescope git_files<CR>", desc = "[S]earch [G]it files" },
      { "<leader>sf", "<cmd>Telescope find_files<CR>", desc = "[S]earch [F]iles" },
      { "<leader>sw", "<cmd>Telescope grep_string<CR>", desc = "[S]earch current [W]ord" },
      { "<leader>sg", "<cmd>Telescope live_grep<CR>", desc = "[S]earch by [G]rep" },
      { "<leader>sd", "<cmd>Telescope diagnostics<CR>", desc = "[S]earch [D]iagnostics" },
      { "<leader>sr", "<cmd>Telescope lsp_references<CR>", desc = "[S]earch LSP [R]eferences" },
      {
        "<leader>/",
        function()
          require("telescope.builtin").current_buffer_fuzzy_find(
            require("telescope.themes").get_dropdown({ previewer = false })
          )
        end,
        desc = "[/] Fuzzy search in current buffer",
      },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = { "node_modules/", "%.git/" },
        },
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
  },
}
