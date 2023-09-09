require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true,

	styles = {
		 sidebars = "transparent", -- style for sidebars, see below
    floats = "transparent", -- style for floating windows
	}
})

vim.cmd[[colorscheme tokyonight]]
