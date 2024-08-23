-- set leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--splits
vim.keymap.set("n", "ss", ':split<Return><C-w>w', { silent = true })
vim.keymap.set("n", "sv", ':vsplit<Return><C-w>w', { silent = true })
-- tabs
vim.keymap.set("n", "nt", ":tabedit<Return>", { silent = true })
vim.keymap.set("n", "tn", ":tabnext<Return>", { silent = true })
vim.keymap.set("n", "tp", ":tabprev<Return>", { silent = true })

-- netrw
vim.keymap.set("n", "<leader>fe", ":NvimTreeToggle<CR>", { silent = true })

-- buffer navigation
vim.keymap.set('n', '<leader>bn', ":bnext<CR>")
vim.keymap.set('n', '<leader>bp', ":bprevious<CR>")

-- lazy menu
vim.keymap.set("n", "<leader>l", ":Lazy<Return>", { silent = true })
vim.keymap.set("n", "<leader>m", ":Mason<Return>", { silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

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

vim.keymap.set('n', '<leader>ln', function()
  local current_number = vim.wo.relativenumber
  vim.wo.relativenumber = not current_number
end, { silent = true })
