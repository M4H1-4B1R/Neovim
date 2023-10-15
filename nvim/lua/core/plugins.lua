local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	"ellisonleao/gruvbox.nvim",
	"rebelot/kanagawa.nvim",
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		requires = { "nvim-tree/nvim-web-devicons" },
	},
	"shaunsingh/nord.nvim",
	"norcalli/nvim-colorizer.lua",
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	"nvim-treesitter/nvim-treesitter",
	"bluz71/vim-nightfly-colors",
	"vim-test/vim-test",
	"lewis6991/gitsigns.nvim",
	"preservim/vimux",
	"christoomey/vim-tmux-navigator",
	"tpope/vim-fugitive",
	"tpope/vim-commentary",
	"vimwiki/vimwiki",
	"lambdalisue/suda.vim",

	-- autoclose pairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},

	{
		"stevearc/conform.nvim",
		opts = {
			event = { "BufReadPre", "BufNewFile" },
		},
	},

	-- completion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"williamboman/mason.nvim",
	"neovim/nvim-lspconfig",
	"williamboman/mason-lspconfig.nvim",
	"glepnir/lspsaga.nvim",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
}

local opts = {}

require("lazy").setup(plugins, opts)
