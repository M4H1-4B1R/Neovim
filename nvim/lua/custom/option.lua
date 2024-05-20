-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

vim.loader.enable()

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- syntaxt highlight
vim.g.syntax = true

-- enable cursorline
vim.o.cursorline = true

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- checks to see nerd font availability
vim.g.have_nerd_font = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn off by default
vim.wo.signcolumn = 'no'

-- Decrease update time
vim.o.updatetime = 250
-- vim.o.timeoutlen = 300
--
vim.o.showmode = false

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- vim.o.inccommand = 'split'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.shell = "bash"

-- netrw customization
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- disable some default providers
vim.g["loaded_node_provider"] = 0
vim.g["loaded_python3_provider"] = 0
vim.g["loaded_perl_provider"] = 0
vim.g["loaded_ruby_provider"] = 0

-- neovide specific settings
if vim.g.neovide then
vim.o.guifont = "MesloLGS Nerd Font:h13"
vim.g.neovide_transparency = 0.7
vim.g.neovide_theme = 'auto'
vim.g.neovide_refresh_rate = 60
end

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})


-- from the primeagen
function HateSolidBackground(color)
	color = color or "habamax"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

vim.cmd.colorscheme "habamax"
HateSolidBackground()
