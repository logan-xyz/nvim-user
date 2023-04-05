local cmp = require "cmp"

return {
  {
    "hrsh7th/nvim-cmp",
    opts = {
      mapping = {
        ["<CR>"] = cmp.mapping.confirm { select = true },
      },
    },
  },
}
