local actions = require "telescope.actions"
local telescope = require "telescope"
local fb_actions = telescope.extensions.file_browser.actions

return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-telescope/telescope-file-browser.nvim" },
  opts = {
    defaults = {
      prompt_prefix = string.format("%s ", "ᐅ"),
    },
    pickers = {
      find_files = {
        -- default is dropdown
        -- Supported themes: dropdown , ivy , cursor
        -- theme = "dropdown",
      },
    },
    extensions = {
      file_browser = {
        -- theme = "ivy",
        -- Don't show file stats, which occupies lots spacing
        display_stat = false,
        mappings = {
          ["i"] = {
            ["<C-z>"] = fb_actions.toggle_hidden,
            ["<C-l>"] = actions.select_default,
            ["C-h"] = fb_actions.goto_parent_dir,
          },
          ["n"] = {
            z = fb_actions.toggle_hidden,
            l = actions.select_default,
            h = fb_actions.goto_parent_dir,
          },
        },
      },
    },
  },
  config = function(_, opts)
    -- https://github.com/nvim-telescope/telescope-file-browser.nvim/issues/281
    telescope.setup(opts)
    telescope.load_extension "file_browser"
  end,
}
