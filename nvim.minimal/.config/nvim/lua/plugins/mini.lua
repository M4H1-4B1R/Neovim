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
		-- require("mini.tabline").setup()
		require("mini.git").setup()
		require("mini.diff").setup()
		require("mini.statusline").setup()
		-- require("mini.files").setup()
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
		require("mini.base16").setup({
			palette = {
				base00 = "#040507",
				base01 = "#3c3836",
				base02 = "#504945",
				base03 = "#665c54",
				base04 = "#bdae93",
				base05 = "#d5c4a1",
				base06 = "#ebdbb2",
				base07 = "#fbf1c7",
				base08 = "#fb4934", --red
				base09 = "#fe8019", -- orange
				base0A = "#fabd2f", -- yellow
				base0B = "#b8bb26", -- green
				base0C = "#8ec07c", -- cyan
				base0D = "#83a598", -- blue
				base0E = "#d3869b", -- purple
				base0F = "#d65d0e", -- brown
			},
			use_cterm = true,
			plugins = {
				default = false,
				["echasnovski/mini.nvim"] = true,
			},
		})

		-- transparent background
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "Normal", { ctermbg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { ctermbg = "none" })
		vim.api.nvim_set_hl(0, "LineNr", { ctermbg = "none" })
		vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
		vim.api.nvim_set_hl(0, "LineNrAbove", { ctermbg = "none" })
		vim.api.nvim_set_hl(0, "LineNrAbove", { bg = "none" })
		vim.api.nvim_set_hl(0, "LineNrBelow", { ctermbg = "none" })
		vim.api.nvim_set_hl(0, "LineNrBelow", { bg = "none" })
	end,
	-- vim.keymap.set("n", "<leader>fe", ":lua MiniFiles.open()<CR>", { noremap = true, silent = true }),
}
