require('mason').setup()
require("neodev").setup()
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "html", "cssls", "eslint"},
})

