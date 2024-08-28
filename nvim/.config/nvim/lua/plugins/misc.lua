return {

	{
		"christoomey/vim-tmux-navigator",

		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},
	{
		"jiaoshijie/undotree",
		dependencies = "nvim-lua/plenary.nvim",
		config = true,
		keys = { -- load the plugin only when using it's keybinding:
			{ "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
		},
	},
	{
		"ray-x/web-tools.nvim",
		config = function()
			require("web-tools").setup({
				keymaps = {
					rename = nil, -- by default use same setup of lspconfig
					repeat_rename = ".", -- . to repeat
				},
				hurl = { -- hurl default
					show_headers = false, -- do not show http headers
					floating = false, -- use floating windows (need guihua.lua)
					json5 = false, -- use json5 parser require json5 treesitter
					formatters = { -- format the result by filetype
						json = { "jq" },
						html = { "prettier", "--parser", "html" },
					},
				},
			})
		end,
	},
	{
		"otavioschwanck/arrow.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			show_icons = true,
			leader_key = ";", -- Recommended to be a single key
		},
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"gpanders/nvim-parinfer",
	},
}
