return {
  "echasnovski/mini.nvim",
  version = "*",
  event = "BufEnter",
  config = function()
    local hipatterns = require("mini.hipatterns")
    hipatterns.setup({
      highlighters = {
        hex_color = hipatterns.gen_highlighter.hex_color(),
      },
    })
  end,
}
