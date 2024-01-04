vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", ':NvimTreeFindFileToggle<CR>')
--vim.keymap.set("n", "<leader>ex", "Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })

--splits
vim.keymap.set("n", "ss", ':split<Return><C-w>w', { silent = true })
vim.keymap.set("n", "sv", ':vsplit<Return><C-w>w', { silent = true })

--tab
vim.keymap.set("n", "nt", ":tabedit<Return>", { silent = true })

-- Window Movement
vim.keymap.set('n', '<leader>r', '<C-w>w') --rotate between open windows
vim.keymap.set('', 'sh', '<C-w>h')
vim.keymap.set('', 'sj', '<C-w>j')
vim.keymap.set('', 'sk', '<C-w>k')
vim.keymap.set('', 'sl', '<C-w>l')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
