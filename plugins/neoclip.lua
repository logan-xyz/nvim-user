-- https://github.com/AckslD/nvim-neoclip.lua/issues/102
return {
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    { "kkharji/sqlite.lua" },
    { "nvim-telescope/telescope.nvim" },
  },
  keys = {
    { "<leader>fp", "<cmd>Telescope neoclip<CR>", desc = "Clipboard" },
  },
  cmd = "Telescope neoclip",
  config = function(_, opts)
    require("neoclip").setup(opts)
    require("telescope").load_extension "neoclip"
  end,
}
