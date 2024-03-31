-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--
-- set leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.autoindent = true
vim.o.smartindent = true

-- disable some default providers
vim.g["loaded_node_provider"] = 0
vim.g["loaded_python3_provider"] = 0
vim.g["loaded_perl_provider"] = 0
vim.g["loaded_ruby_provider"] = 0

--keybinds
--splits
vim.keymap.set("n", "ss", ':split<Return><C-w>w', { silent = true })
vim.keymap.set("n", "sv", ':vsplit<Return><C-w>w', { silent = true })
-- tabs
vim.keymap.set("n", "nt", ":tabedit<Return>", { silent = true })
vim.keymap.set("n", "tn", ":tabnext<Return>", { silent = true })
vim.keymap.set("n", "tp", ":tabprev<Return>", { silent = true })

-- netrw
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- lazy menu
vim.keymap.set("n", "<leader>l", ":Lazy<Return>", { silent = true })
vim.keymap.set("n", "<leader>m", ":Mason<Return>", { silent = true })


-- bootstraping lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
require("lazy").setup("plugins")

--keybinds
-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- lsp keybinds
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, {})
