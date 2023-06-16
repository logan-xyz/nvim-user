return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    autoselect_one = false,
    default_component_configs = {
      indent = { padding = 0, indent_size = 2 },
    },
    window = {
      width = 36,
    },
    source_selector = {},
    filesystem = {
      filtered_items = {
        visible = true, -- when true, they will just be displayed differently than normal items
        hide_gitignored = false,
        hide_hidden = false,
        hide_dotfiles = false,
      },
      window = {
        mappings = {
          ["<leftrelease>"] = "open",
        },
      },
    },
  },
}
