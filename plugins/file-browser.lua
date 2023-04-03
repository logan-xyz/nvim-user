-- https://github.com/AckslD/nvim-neoclip.lua/issues/102
return {
  "nvim-telescope/telescope-file-browser.nvim",
  event = "BufEnter",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function(_, opts)
    require("neoclip").setup(opts)
    require("telescope").load_extension "file_browser"
  end,
}
