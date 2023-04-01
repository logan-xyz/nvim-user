-- https://github.com/AckslD/nvim-neoclip.lua/issues/102
return {
  "AckslD/nvim-neoclip.lua",
  event = "BufEnter",
  dependencies = {
    { "kkharji/sqlite.lua" },
    { "nvim-telescope/telescope.nvim" },
  },
  config = function(_, opts)
    require("neoclip").setup(opts)
    require("telescope").load_extension "neoclip"
  end,
}
