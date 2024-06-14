return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local auto_theme_custom = require("lualine.themes.auto")
		auto_theme_custom.normal.c.bg = 'none'
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = auto_theme_custom,
				component_separators = { left = "", right = "" },
				-- section_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			}
		})
	end,
}
