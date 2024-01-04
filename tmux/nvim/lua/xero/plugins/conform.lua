local conform = require("conform")

conform.setup ({
  formatters_by_ft = {
    html = {'prettier'},
    css  = {'prettier'},
    javascript = {'prettier'},
    lua = {'stylua'},
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500
  },
})

vim.keymap.set({"n", "v"}, "<leader>mp", function()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500
  })
end, {desc = "Format file on selection"}
  )
