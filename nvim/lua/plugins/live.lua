return {
	'barrett-ruth/live-server.nvim',
	build = 'npm i -g live-server',
	cdm = { 'LiveServerStart', 'LiveServerStop'},
	config = function ()
		require("live-server").setup()
	end
}
