-- for material theme
--
-- return {
--   'marko-cerovac/material.nvim',
--   config = function()
--     require('material').setup({
--       disable = {
--         background = false,
--       },
--     })
--     vim.g.material_style = "deep ocean"
--     vim.cmd.colorscheme 'material'
--   end
-- }
--
return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    require("onedark").setup({
      style = "darker",
    })
    require("onedark").load()
  end,
}
