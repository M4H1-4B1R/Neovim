return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		local hipatterns = require("mini.hipatterns")
		require("mini.indentscope").setup()
		hipatterns.setup({
			highlighters = {
				hex_color = hipatterns.gen_highlighter.hex_color(),
			},
		})
		require("mini.pairs").setup()
	end,
}
