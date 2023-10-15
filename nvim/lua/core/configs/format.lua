require("conform").setup({
	formatters_by_ft = {
		javascript = { 'prettier' },
		html = { 'prettier' },
		css = { 'prettier' },
		javascriptreact = { 'prettier' },
		typescriptreact = { 'prettier' },
		yaml = { 'prettier' },
		lua = { 'stylua' },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		async = false,
		timeout_ms = 500,
		lsp_fallback = true,
	}
})
