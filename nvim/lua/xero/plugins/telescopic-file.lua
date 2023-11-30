require("telescope").setup {
  hijack_netrw = true,
  mappings = {
    ["n"] = {
      "<leader>ex", "Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true },
    },
  },
}
require("telescope").load_extension "file_browser"
