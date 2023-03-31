-- https://github.com/AckslD/nvim-neoclip.lua/issues/102
return {
  "AckslD/nvim-neoclip.lua",
  event = "LspAttach",
  after = "telescope",
  dependencies = {
    { "kkharji/sqlite.lua",           module = "sqlite" },
    { "nvim-telescope/telescope.nvim" },
  },
  config = function(plugin, opts)
    require("neoclip").setup()
    require("telescope").load_extension "neoclip"
  end,
}
