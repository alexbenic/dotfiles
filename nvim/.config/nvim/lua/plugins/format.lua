return {
  {
    "stevearc/conform.nvim",
    init = function()
      vim.o.formatexpr = "v:lua.Formatexpr()"
    end,
    keys = {
      {
        "<leader>cf",
        function() require("conform").format({ async = true }) end,
        mode = { "n", "x" },
        desc = "Format file or range (in visual mode)",
      },
    },
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          html = { "prettier" },
          elixir = { "mix" },
        },
        default_format_opts = {
          timeout_ms = 2000,
          lsp_format = "fallback",
        }
      })
    end,
  },
}
