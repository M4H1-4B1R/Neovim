-- from the primeagen
function HateSolidBackground(color)
	color = color or "gruvbox-material"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	'f4z3r/gruvbox-material.nvim',
	name = 'gruvbox-material',
	lazy = false,
	priority = 1000,
	config = function()
		require('gruvbox-material').setup({
			background = {
				transparent = true,
			}
		})
	vim.cmd.colorscheme "gruvbox-material"
	HateSolidBackground()
	end
}


