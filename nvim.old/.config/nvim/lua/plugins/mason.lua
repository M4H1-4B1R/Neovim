return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "html", "cssls", "vtsls" },
				auto_install = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			lspconfig.lua_ls.setup({
				capabilties = capabilities,
				on_attach = on_attach,
			})
			lspconfig.ts_ls.setup({

				capabilties = capabilities,
				on_attach = on_attach,
			})
			lspconfig.html.setup({

				capabilties = capabilities,
				on_attach = on_attach,
			})
			lspconfig.cssls.setup({

				capabilities = capabilities,
				on_attach = on_attach,
			})
			lspconfig.intelephense.setup({

				capabilities = capabilities,
				on_attach = on_attach,
			})
			lspconfig.vtsls.setup({

				capabilities = capabilities,
				on_attach = on_attach,
			})
		end,
	},
}
