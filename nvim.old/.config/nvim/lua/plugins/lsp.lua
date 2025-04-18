return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ensure_installed = { "js-debug-adapter", "prettier", "phpcs", "php-cs-fixer" },
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "html", "cssls", "vtsls", "phpactor", "intelephense" },
				auto_install = true,
				vtsls = {
					filetypes = {
						"javascript",
						"javascriptreact",
						"javascript.jsx",
						"typescript",
						"typescriptreact",
						"typescript.jsx",
					},
					enableMoveToFileCodeAction = true,
					autoUserWorkspaceTsdk = true,
					experimental = {
						completion = {
							enableServerSideFuzzyMatch = true,
						},
					},
					settings = {
						complete_function_calls = true,
					},
				},
				typescript = {
					updateImportsOnFileMove = { enabled = "always" },
					suggest = {
						completeFunctionCalls = true,
					},
					inlayHints = {
						enumMemberValues = { enabled = true },
						functionLikeReturnTypes = { enabled = true },
						parameterNames = { enabled = "literals" },
						parameterTypes = { enabled = true },
						propertyDeclarationTypes = { enabled = true },
						variableTypes = { enabled = true },
					},
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true

			servers = {
				phpactor = {
					enabled = lsp == "phpactor",
				},
				intelephence = {
					enabled = lsp == "intelephense",
				},
			}

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
