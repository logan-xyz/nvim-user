-- https://github.com/AckslD/nvim-neoclip.lua/issues/102
return {
  "nvim-telescope/telescope-file-browser.nvim",
  event = "BufEnter",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>ff",
      "<cmd>Telescope file_browser path=%:p:h select_buffer=true grouped=true<cr>",
      desc = "Files browser current buffer",
    },
    {
      "<leader>fF",
      "<cmd>Telescope file_browser grouped=true<cr>",
      desc = "Files browser in project",
    },
  },
}
