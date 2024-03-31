return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		local hipatterns = require("mini.hipatterns")
		require("mini.statusline").setup()
		require("mini.indentscope").setup()
		require("mini.hipatterns").setup({
			highlighters = {
				hex_color = hipatterns.gen_highlighter.hex_color(),
			},
		})
		require("mini.pairs").setup()
	end,
}
