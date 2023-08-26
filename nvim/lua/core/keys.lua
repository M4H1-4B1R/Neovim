vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", ':NvimTreeFindFileToggle<CR>')

--splits
vim.keymap.set("n", "<c-h>", vim.cmd.split)
vim.keymap.set("n", "<c-v>", vim.cmd.vsplit)
