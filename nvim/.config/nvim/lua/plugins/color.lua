-- from the primeagen
function HateSolidBackground(color)
	color = color or "gruvbox-material"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = false,
				terminal_colors = false,
			})
			vim.cmd.colorscheme("tokyonight")
		end,
	},
}
