return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
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
