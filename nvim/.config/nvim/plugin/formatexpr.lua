function Formatexpr()
  local conform = require("conform")
  local formatters, lsp = conform.list_formatters_to_run(0)
  if #formatters == 0 and not lsp then
    return 1
  end
  return conform.formatexpr()
end
