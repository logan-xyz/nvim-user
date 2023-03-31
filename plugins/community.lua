return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- lancuage packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.json" },
  -- project
  { import = "astrocommunity.project.project-nvim" },
  -- motion
  { import = "astrocommunity.motion.nvim-surround" },
  -- editing-support
  -- A better annotation generator. Supports multiple languages and annotation conventions.
  { import = "astrocommunity.editing-support.neogen" },
  -- { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- { import = "astrocommunity.editing-support.refactoring-nvim" },
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
