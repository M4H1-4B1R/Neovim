return {
  'marko-cerovac/material.nvim',
  config = function()
    require('material').setup({
      disable = {
        background = false,
      },
    })
    vim.g.material_style = "deep ocean"
    vim.cmd.colorscheme 'material'
  end
}
