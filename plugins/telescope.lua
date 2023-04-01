return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local defaults = opts.defaults
    defaults.prompt_prefix = string.format("%s ", "ᐅ")

    return opts
  end,
}
