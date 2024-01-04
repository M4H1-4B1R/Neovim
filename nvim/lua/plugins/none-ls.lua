return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,  -- lua format
        null_ls.builtins.diagnostics.luacheck, -- lua lint
        null_ls.builtins.formatting.prettier, -- formatting most popular
        null_ls.builtins.diagnostics.deno_lint, -- js
        null_ls.builtins.diagnostics.djlint, -- html
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
