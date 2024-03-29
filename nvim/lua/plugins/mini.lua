return {
	'echasnovski/mini.nvim', 
	version = '*',
	config = function()
		require('mini.statusline').setup()
		require('mini.indentscope').setup()
		require('mini.hipatterns').setup()
		require('mini.pairs').setup()
	end
}
