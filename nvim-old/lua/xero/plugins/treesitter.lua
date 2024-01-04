require 'nvim-treesitter.install'.prefer_git = false
require 'nvim-treesitter.install'.compilers = { "gcc", "g++" }
require('nvim-treesitter.configs').setup({
  ensure_installed = { 'lua', 'html', 'css', 'javascript', 'markdown', 'markdown_inline', },
})
