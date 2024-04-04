return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "tsserver", "html", "cssls" },
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
			})
			lspconfig.tsserver.setup({

				capabilties = capabilities,
			})
			lspconfig.html.setup({

				capabilties = capabilities,
			})
			lspconfig.cssls.setup({

				capabilities = capabilities,
			})
		end,
	},
}
