return {
	"echasnovski/mini.nvim",
	version = "*",
	event = "BufEnter",
	config = function()
		local hipatterns = require("mini.hipatterns")
		require("mini.indentscope").setup()
		hipatterns.setup({
			highlighters = {
				hex_color = hipatterns.gen_highlighter.hex_color(),
			},
		})
		require("mini.pairs").setup()
		require("mini.notify").setup()
		require("mini.tabline").setup()
		-- require("mini.statusline").setup()
		require("mini.files").setup()
		require("mini.icons").setup({
			opts = {
				file = {
					[".eslintrc.js"] = { glyph = "󰱺", hl = "MiniIconsYellow" },
					[".node-version"] = { glyph = "", hl = "MiniIconsGreen" },
					[".prettierrc"] = { glyph = "", hl = "MiniIconsPurple" },
					[".yarnrc.yml"] = { glyph = "", hl = "MiniIconsBlue" },
					["eslint.config.js"] = { glyph = "󰱺", hl = "MiniIconsYellow" },
					["package.json"] = { glyph = "", hl = "MiniIconsGreen" },
					["tsconfig.json"] = { glyph = "", hl = "MiniIconsAzure" },
					["tsconfig.build.json"] = { glyph = "", hl = "MiniIconsAzure" },
					["yarn.lock"] = { glyph = "", hl = "MiniIconsBlue" },
				},
			},
		})
	end,
	vim.keymap.set("n", "<leader>fe", ":lua MiniFiles.open()<CR>", { noremap = true, silent = true }),
}
