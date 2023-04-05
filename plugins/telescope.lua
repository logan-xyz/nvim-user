local actions = require "telescope.actions"
local fb_actions = require("telescope").extensions.file_browser.actions

return {
  "nvim-telescope/telescope.nvim",
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
          i = {
            ["<C-z>"] = fb_actions.toggle_hidden,
            ["<C-l>"] = actions.select_default,
            -- see: https://github.com/nvim-telescope/telescope-file-browser.nvim/pull/65
            ["C-h"] = fb_actions.goto_parent_dir,
          },
          n = {
            z = fb_actions.toggle_hidden,
            l = actions.select_default,
            h = fb_actions.goto_parent_dir,
          },
        },
      },
    },
  },
}
